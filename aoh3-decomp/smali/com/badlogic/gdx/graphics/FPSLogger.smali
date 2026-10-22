.class public Lcom/badlogic/gdx/graphics/FPSLogger;
.super Ljava/lang/Object;
.source "FPSLogger.java"


# instance fields
.field bound:I

.field startTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/FPSLogger;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/graphics/FPSLogger;->bound:I

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/FPSLogger;->startTime:J

    return-void
.end method


# virtual methods
.method public log()V
    .locals 6

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/badlogic/gdx/graphics/FPSLogger;->startTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getFramesPerSecond()I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/graphics/FPSLogger;->bound:I

    if-ge v2, v3, :cond_0

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fps: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FPSLogger"

    invoke-interface {v3, v4, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/FPSLogger;->startTime:J

    :cond_0
    return-void
.end method
