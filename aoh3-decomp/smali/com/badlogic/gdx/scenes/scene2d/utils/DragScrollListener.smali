.class public Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;
.source "DragScrollListener.java"


# static fields
.field static final tmpCoords:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field interpolation:Lcom/badlogic/gdx/math/Interpolation;

.field maxSpeed:F

.field minSpeed:F

.field padBottom:F

.field padTop:F

.field rampTime:J

.field private scroll:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

.field private scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

.field private scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

.field startTime:J

.field tickSecs:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp5In:Lcom/badlogic/gdx/math/Interpolation$ExpIn;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->minSpeed:F

    const/high16 v0, 0x42960000    # 75.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->maxSpeed:F

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    const-wide/16 v0, 0x6d6

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->rampTime:J

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scroll:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$1;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$2;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    return-void
.end method


# virtual methods
.method public drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scroll:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToActorCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget p1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->isAbove(F)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->startTime:J

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    invoke-static {p1, p2, p2}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_0
    return-void

    :cond_1
    iget p1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->isBelow(F)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->startTime:J

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    invoke-static {p1, p2, p2}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_2
    return-void

    :cond_3
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    return-void
.end method

.method public dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    return-void
.end method

.method getScrollPixels()F
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->minSpeed:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->maxSpeed:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->startTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    iget-wide v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->rampTime:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Interpolation;->apply(FFF)F

    move-result v0

    return v0
.end method

.method protected isAbove(F)Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scroll:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->padTop:F

    sub-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isBelow(F)Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->padBottom:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected scroll(F)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scroll:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollY(F)V

    return-void
.end method

.method public setPadding(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->padTop:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->padBottom:F

    return-void
.end method

.method public setup(FFFF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->minSpeed:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->maxSpeed:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p4, p1

    float-to-long p1, p4

    iput-wide p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->rampTime:J

    return-void
.end method
