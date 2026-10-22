.class public Lcom/badlogic/gdx/InputEventQueue;
.super Ljava/lang/Object;
.source "InputEventQueue.java"


# static fields
.field private static final KEY_DOWN:I = 0x0

.field private static final KEY_TYPED:I = 0x2

.field private static final KEY_UP:I = 0x1

.field private static final MOUSE_MOVED:I = 0x6

.field private static final SCROLLED:I = 0x7

.field private static final SKIP:I = -0x1

.field private static final TOUCH_DOWN:I = 0x3

.field private static final TOUCH_DRAGGED:I = 0x5

.field private static final TOUCH_UP:I = 0x4


# instance fields
.field private currentEventTime:J

.field private final processingQueue:Lcom/badlogic/gdx/utils/IntArray;

.field private final queue:Lcom/badlogic/gdx/utils/IntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method private declared-synchronized next(II)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    :goto_0
    if-ge p2, v1, :cond_1

    aget v2, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    monitor-exit p0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x3

    packed-switch v2, :pswitch_data_0

    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    goto :goto_1

    :pswitch_0
    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :pswitch_1
    add-int/lit8 p2, p2, 0x3

    goto :goto_0

    :pswitch_2
    add-int/lit8 p2, p2, 0x4

    goto :goto_0

    :pswitch_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :pswitch_4
    aget v2, v0, p2

    add-int/2addr p2, v2

    goto :goto_0

    :goto_1
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private queueTime(J)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    return-void
.end method


# virtual methods
.method public drain(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 11

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->addAll(Lcom/badlogic/gdx/utils/IntArray;)V

    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget-object v1, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget v2, v0, v2

    add-int/lit8 v4, v3, 0x1

    aget v3, v0, v3

    int-to-long v5, v3

    const/16 v3, 0x20

    shl-long/2addr v5, v3

    add-int/lit8 v3, v4, 0x1

    aget v4, v0, v4

    int-to-long v7, v4

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    or-long v4, v5, v7

    iput-wide v4, p0, Lcom/badlogic/gdx/InputEventQueue;->currentEventTime:J

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :pswitch_0
    add-int/lit8 v2, v3, 0x1

    aget v3, v0, v3

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->intBitsToFloat(I)F

    move-result v3

    add-int/lit8 v4, v2, 0x1

    aget v2, v0, v2

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {p1, v3, v2}, Lcom/badlogic/gdx/InputProcessor;->scrolled(FF)Z

    goto :goto_1

    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    aget v3, v0, v3

    add-int/lit8 v4, v2, 0x1

    aget v2, v0, v2

    invoke-interface {p1, v3, v2}, Lcom/badlogic/gdx/InputProcessor;->mouseMoved(II)Z

    :goto_1
    move v2, v4

    goto :goto_0

    :pswitch_2
    add-int/lit8 v2, v3, 0x1

    aget v3, v0, v3

    add-int/lit8 v4, v2, 0x1

    aget v2, v0, v2

    add-int/lit8 v5, v4, 0x1

    aget v4, v0, v4

    invoke-interface {p1, v3, v2, v4}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    move v2, v5

    goto :goto_0

    :pswitch_3
    add-int/lit8 v2, v3, 0x1

    aget v3, v0, v3

    add-int/lit8 v4, v2, 0x1

    aget v2, v0, v2

    add-int/lit8 v5, v4, 0x1

    aget v4, v0, v4

    add-int/lit8 v6, v5, 0x1

    aget v5, v0, v5

    invoke-interface {p1, v3, v2, v4, v5}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    goto :goto_2

    :pswitch_4
    add-int/lit8 v2, v3, 0x1

    aget v3, v0, v3

    add-int/lit8 v4, v2, 0x1

    aget v2, v0, v2

    add-int/lit8 v5, v4, 0x1

    aget v4, v0, v4

    add-int/lit8 v6, v5, 0x1

    aget v5, v0, v5

    invoke-interface {p1, v3, v2, v4, v5}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    :goto_2
    move v2, v6

    goto/16 :goto_0

    :pswitch_5
    add-int/lit8 v2, v3, 0x1

    aget v3, v0, v3

    int-to-char v3, v3

    invoke-interface {p1, v3}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    goto/16 :goto_0

    :pswitch_6
    add-int/lit8 v2, v3, 0x1

    aget v3, v0, v3

    invoke-interface {p1, v3}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    goto/16 :goto_0

    :pswitch_7
    add-int/lit8 v2, v3, 0x1

    aget v3, v0, v3

    invoke-interface {p1, v3}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z

    goto/16 :goto_0

    :pswitch_8
    aget v2, v0, v3

    add-int/2addr v3, v2

    move v2, v3

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/InputEventQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/InputEventQueue;->currentEventTime:J

    return-wide v0
.end method

.method public declared-synchronized keyDown(IJ)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    iget-object p2, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized keyTyped(CJ)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    iget-object p2, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized keyUp(IJ)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    iget-object p2, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized mouseMoved(IIJ)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x6

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/InputEventQueue;->next(II)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v4, v2, 0x3

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    add-int/lit8 v2, v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/InputEventQueue;->next(II)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    invoke-direct {p0, p3, p4}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    iget-object p3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scrolled(FFJ)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    invoke-direct {p0, p3, p4}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    iget-object p3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-static {p2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized touchDown(IIIIJ)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    invoke-direct {p0, p5, p6}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    iget-object p5, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p5, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized touchDragged(IIIJ)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x5

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/InputEventQueue;->next(II)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v4, v2, 0x5

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v3

    if-ne v3, p3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    iget-object v3, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v4, v2, 0x3

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/InputEventQueue;->next(II)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    invoke-direct {p0, p4, p5}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    iget-object p4, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized touchUp(IIIIJ)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    invoke-direct {p0, p5, p6}, Lcom/badlogic/gdx/InputEventQueue;->queueTime(J)V

    iget-object p5, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p5, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/InputEventQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
