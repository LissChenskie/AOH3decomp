.class public Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;
.super Ljava/lang/Thread;
.source "GameThread_Turns.java"


# instance fields
.field public THREAD_TURN_ID:I

.field public civsNukes:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public civsUpdateMaxManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public iLastUpdateTurnID:I

.field public provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesConvertReligion:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesCoreCreation:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesDevelopInfrastructure:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesIncreaseGrowthRate:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesIncreaseManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesIncreaseTaxEfficiency:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesInvest:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesWonderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public running:Z

.field public timeSleep:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->running:Z

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->iLastUpdateTurnID:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsUpdateMaxManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesWonderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesCoreCreation:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesConvertReligion:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesDevelopInfrastructure:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseGrowthRate:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseTaxEfficiency:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesInvest:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsNukes:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-void
.end method


# virtual methods
.method public final addCivUpdateMaxManpower(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsUpdateMaxManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsUpdateMaxManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final addCivsNukes(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsNukes:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsNukes:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final addProvinceBuildingsUnderConstruction(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final addProvinceConvertReligion(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesConvertReligion:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesConvertReligion:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final addProvinceCoreCreation(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesCoreCreation:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesCoreCreation:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final addProvinceDevelopInfrastructure(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesDevelopInfrastructure:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesDevelopInfrastructure:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final addProvinceIncreaseGrowthRate(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseGrowthRate:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseGrowthRate:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final addProvinceIncreaseManpower(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final addProvinceIncreaseTaxEfficiency(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseTaxEfficiency:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseTaxEfficiency:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final addProvinceInvest(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesInvest:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesInvest:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final addProvinceWonderConstruction(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesWonderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesWonderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public clearData()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesInvest:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseTaxEfficiency:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseGrowthRate:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesDevelopInfrastructure:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesConvertReligion:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesCoreCreation:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesWonderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsUpdateMaxManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsNukes:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->iLastUpdateTurnID:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    return-void
.end method

.method public final removeCivsNukes(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsNukes:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final removeProvinceBuildingsUnderConstruction(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final removeProvinceConvertReligion(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesConvertReligion:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final removeProvinceCoreCreation(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesCoreCreation:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final removeProvinceDevelopInfrastructure(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesDevelopInfrastructure:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final removeProvinceIncreaseGrowthRate(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseGrowthRate:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final removeProvinceIncreaseManpower(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final removeProvinceIncreaseTaxEfficiency(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseTaxEfficiency:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final removeProvinceInvest(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesInvest:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final removeProvinceWonderConstruction(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesWonderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    :goto_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->running:Z

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->timeSleep:J

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->iLastUpdateTurnID:I

    if-eq v0, v1, :cond_1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->iLastUpdateTurnID:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateBuildingsUnderConstruction(I)V

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceConvertReligion(I)V

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceCoreCreation(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceInvestEconomy()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceIncreaseManpower()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceIncreaseTaxEfficiency()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceIncreaseGrowthRate()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceWonderConstruction()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceDevelopInfrastructure()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateMaxManpower()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateUnrest()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDevastation()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateProvinceValues()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateColonization()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateRelations()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDiplomacy()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Player;->update()V

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_RULER_MIN_TURN_ID:I

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDeathOfAdvisors_Administrative()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDeathOfAdvisors_Economic()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDeathOfAdvisors_Innovation()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDeathOfAdvisors_Military()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDeathOfAGenerals_NotAssigned()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDeathOfAGenerals_Assigned()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDeathOfRulers()V

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateRegimentsLimit()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateGoldenAge()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->runPlagues()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->startDisease()V

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateCivsNukes(I)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->iLastUpdateTurnID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->timeSleep:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xf

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public final unlockGoldenAge_Military(I)V
    .locals 4

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_MILITARY_UNITS_ATTACK:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v2

    aget v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_MILITARY_UNITS_DEFENSE:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v2

    aget v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_MILITARY_MAX_MANPOWER_PERC:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v2

    aget v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_MILITARY_DURATION_DAYS:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v3

    aget v2, v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->setGoldenAgeMilitary(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v0, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGoldenAgeMilitary;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGoldenAgeMilitary;-><init>(II)V

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->GOLDEN_MILITARY:Ljava/lang/String;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final unlockGoldenAge_Prosperity(I)V
    .locals 4

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_PROSPERITY_MONTHLY_INCOME:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeProsperity()I

    move-result v2

    aget v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_PROSPERITY_INCOME_PRODUCTION:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeProsperity()I

    move-result v2

    aget v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_PROSPERITY_DURATION_DAYS:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeProsperity()I

    move-result v3

    aget v2, v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeProsperity()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->setGoldenAgeProsperity(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v0, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGoldenAgeProsperity;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGoldenAgeProsperity;-><init>(II)V

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->GOLDEN_PROSPERITY:Ljava/lang/String;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final unlockGoldenAge_Science(I)V
    .locals 4

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_SCIENCE_RESEARCH:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeScience()I

    move-result v2

    aget v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_SCIENCE_LEGACY:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeScience()I

    move-result v2

    aget v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_SCIENCE_DURATION_DAYS:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeScience()I

    move-result v3

    aget v2, v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeScience()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->setGoldenAgeScience(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v0, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGoldenAgeScience;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGoldenAgeScience;-><init>(II)V

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->GOLDEN_SCIENCE:Ljava/lang/String;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateBuildingsUnderConstruction(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingsUnderConstrucion(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesBuildingsUnderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateCivsNukes(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsNukes:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateNukeProduction(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final updateColonization()V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_POPULATION_STEPS:I

    rem-int/2addr v0, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateColonizationProvince()V

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_POPULATION_STEPS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateDeathOfAGenerals_Assigned()V
    .locals 11

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS:I

    rem-int/2addr v0, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v1, :cond_3

    :try_start_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v2, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/RulersManager;->characterDies(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v10, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->GENERAL_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "GeneralDied"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->general:I

    iget v7, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v2, v10}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    :cond_0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setArmyGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/2addr v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final updateDeathOfAGenerals_NotAssigned()V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS_NOT_ASSIGNED:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v1, :cond_1

    :try_start_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->update_ChanceOfGeneral_NotAssigned()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS_NOT_ASSIGNED:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/2addr v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateDeathOfAdvisors_Administrative()V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I

    rem-int/2addr v0, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v1, :cond_1

    :try_start_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->update_ChanceOfDeathAdvisor_Administrative(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/2addr v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateDeathOfAdvisors_Economic()V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    add-int/lit8 v0, v0, 0x5a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I

    rem-int/2addr v0, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v1, :cond_1

    :try_start_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->update_ChanceOfDeathAdvisor_Economic(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/2addr v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateDeathOfAdvisors_Innovation()V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    add-int/lit16 v0, v0, 0xb4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I

    rem-int/2addr v0, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v1, :cond_1

    :try_start_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->update_ChanceOfDeathAdvisor_Innovation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/2addr v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateDeathOfAdvisors_Military()V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    add-int/lit16 v0, v0, 0x10e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I

    rem-int/2addr v0, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v1, :cond_1

    :try_start_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->update_ChanceOfDeathAdvisor_Military(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/2addr v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateDeathOfRulers()V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_RULER_EVERY_X_DAYS:I

    rem-int/2addr v0, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v1, :cond_1

    :try_start_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/RulersManager;->update_ChanceOfDeathOfRuler(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEATH_RULER_EVERY_X_DAYS:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/2addr v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateDevastation()V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEVASTATION_STEPS:I

    rem-int/2addr v0, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateDevastation()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateLoot()V

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DEVASTATION_STEPS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateDiplomacy()V
    .locals 2

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DIPLOMACY_EXPIRED:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDiplomacy(I)V

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DIPLOMACY_EXPIRED:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DIPLOMACY_EXPIRED:I

    :goto_1
    add-int/2addr v0, v1

    :cond_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDiplomacy(I)V

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DIPLOMACY_EXPIRED:I

    goto :goto_1

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-lez v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateDiplomacy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final updateDiplomacy(I)V
    .locals 1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateTruces(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateDefensivePact(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateNonAggressionPact(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateGuarantee(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateAlliance(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateMilitaryAccess(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateRivals(I)V

    return-void
.end method

.method public final updateGoldenAge()V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_GOLDEN_AGE:I

    rem-int/2addr v0, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateGoldenAge_Prosperity(I)V

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateGoldenAge_Military(I)V

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->updateGoldenAge_Science(I)V

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_GOLDEN_AGE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateGoldenAge_Military(I)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->iGoldenAge_MilitarySize:I

    if-ge v0, v1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->getIncreasedManpower()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_MILITARY_INCREASED_MANPOWER:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v2

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->getMilitaryBuildingsConstructed()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_MILITARY_MILITARY_BUILDINGS:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeMilitary()I

    move-result v2

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->unlockGoldenAge_Military(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final updateGoldenAge_Prosperity(I)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeProsperity()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->iGoldenAge_ProsperitySize:I

    if-ge v0, v1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->getInvestedInEconomy()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_PROSPERITY_INVESTED_IN_ECONOMY:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeProsperity()I

    move-result v2

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->getEconomyBuildingsConstructed()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_PROSPERITY_ECONOMY_BUILDINGS:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeProsperity()I

    move-result v2

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->unlockGoldenAge_Prosperity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final updateGoldenAge_Science(I)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeScience()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->iGoldenAge_ScienceSize:I

    if-ge v0, v1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->getDevelopedInfrastructure()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_SCIENCE_DEVELOPED_INFRASTRUCTURE:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeScience()I

    move-result v2

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->getAdministrativeBuildingsConstructed()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->goldenAge:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GoldenAge;->GA_SCIENCE_ADMINISTRATIVE_BUILDINGS:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;->getGoldenAgeScience()I

    move-result v2

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->unlockGoldenAge_Science(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final updateMaxManpower()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsUpdateMaxManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->civsUpdateMaxManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateManpowerPerMonth()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final updateProvinceConvertReligion(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesConvertReligion:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->updateReligionConversion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final updateProvinceCoreCreation(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesCoreCreation:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->updateCoreCreation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final updateProvinceDevelopInfrastructure()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesDevelopInfrastructure:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateDevelopInfrastructure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final updateProvinceIncreaseGrowthRate()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseGrowthRate:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateIncreaseGrowthRate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final updateProvinceIncreaseManpower()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseManpower:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateIncreaseManpower()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final updateProvinceIncreaseTaxEfficiency()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesIncreaseTaxEfficiency:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateIncreaseTaxEfficiency()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final updateProvinceInvestEconomy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesInvest:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateInvestEconomy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final updateProvinceValues()V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    rem-int/lit16 v0, v0, 0x16d

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceValue()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit16 v0, v0, 0x16d

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateProvinceWonderConstruction()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->provincesWonderConstruction:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateWonderConstruction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final updateRegimentsLimit()V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_REGIMENTS_LIMIT_STEPS:I

    rem-int/2addr v0, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v1, :cond_1

    :try_start_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegimentsLimit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_REGIMENTS_LIMIT_STEPS:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/2addr v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateRelations()V
    .locals 2

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DIPLOMACY_EXPIRED:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateImproveRelations(I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateDamageRelations(I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_DIPLOMACY_IMPROVE_DAMAGE_RELATIONS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final updateUnrest()V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_UNREST_STEPS:I

    rem-int/2addr v0, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateRevolutionaryRisk()V

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_UNREST_STEPS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
