.class public Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;
.super Ljava/lang/Object;
.source "AndroidTouchHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logAction(II)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "DOWN"

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const-string p1, "POINTER DOWN"

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string p1, "UP"

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    const-string p1, "POINTER UP"

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const-string p1, "OUTSIDE"

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const-string p1, "CANCEL"

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    const-string p1, "MOVE"

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", Android pointer id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AndroidMultiTouchHandler"

    invoke-interface {v0, p2, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V
    .locals 1

    iget-object v0, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    iput-wide p7, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->timeStamp:J

    iput p5, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->pointer:I

    iput p3, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->x:I

    iput p4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->y:I

    iput p2, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->type:I

    iput p6, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->button:I

    iget-object p1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private toGdxButton(I)I
    .locals 2

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const/16 v1, 0x10

    if-ne p1, v1, :cond_4

    return v0

    :cond_4
    const/4 p1, -0x1

    return p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v9, v1, 0xff

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v11, v1, 0x8

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    monitor-enter p2

    const/16 v14, 0x14

    const/4 v15, -0x1

    const/4 v7, 0x0

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    move v8, v7

    :goto_0
    if-ge v8, v11, :cond_a

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v9, v2

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v7, v2

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->lookUpPointerIndex(I)I

    move-result v6

    if-ne v6, v15, :cond_0

    move v14, v8

    goto :goto_2

    :cond_0
    if-lt v6, v14, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    aget v5, v1, v6

    if-eq v5, v15, :cond_2

    const/4 v3, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v4, v9

    move/from16 v16, v5

    move v5, v7

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v7, v16

    move v14, v8

    move/from16 v19, v9

    move-wide v8, v12

    invoke-direct/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    goto :goto_1

    :cond_2
    move/from16 v17, v6

    move/from16 v18, v7

    move v14, v8

    move/from16 v19, v9

    const/4 v3, 0x4

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v4, v19

    move/from16 v5, v18

    move-wide v8, v12

    invoke-direct/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    :goto_1
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    iget-object v2, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    aget v2, v2, v17

    sub-int v9, v19, v2

    aput v9, v1, v17

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    iget-object v2, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    aget v2, v2, v17

    sub-int v7, v18, v2

    aput v7, v1, v17

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    aput v19, v1, v17

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    aput v18, v1, v17

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    aput v2, v1, v17

    :goto_2
    add-int/lit8 v8, v14, 0x1

    const/16 v14, 0x14

    goto :goto_0

    :pswitch_1
    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->lookUpPointerIndex(I)I

    move-result v14

    if-ne v14, v15, :cond_3

    goto/16 :goto_6

    :cond_3
    const/16 v1, 0x14

    if-lt v14, v1, :cond_4

    goto/16 :goto_6

    :cond_4
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    aput v15, v1, v14

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v8, v1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v11, v0

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    aget v6, v0, v14

    const/4 v5, 0x3

    if-eq v6, v15, :cond_6

    if-ne v9, v5, :cond_5

    const/4 v2, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v3, v8

    move v4, v11

    move v15, v5

    move v5, v14

    move v15, v7

    move/from16 v18, v8

    move-wide v7, v12

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    goto :goto_3

    :cond_5
    move v15, v7

    move/from16 v18, v8

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, v18

    move v4, v11

    move v5, v14

    move-wide v7, v12

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    goto :goto_3

    :cond_6
    move v15, v7

    move/from16 v18, v8

    :goto_3
    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    aput v18, v0, v14

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    aput v11, v0, v14

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    aput v15, v0, v14

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    aput v15, v0, v14

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    aput-boolean v15, v0, v14

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    aput v15, v0, v14

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    const/4 v1, 0x0

    aput v1, v0, v14

    const/4 v0, 0x3

    if-ne v9, v0, :cond_a

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    invoke-static {v0, v15}, Ljava/util/Arrays;->fill([ZZ)V

    goto/16 :goto_6

    :pswitch_2
    move v15, v7

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getFreePointerIndex()I

    move-result v14

    const/16 v2, 0x14

    if-lt v14, v2, :cond_7

    goto :goto_6

    :cond_7
    iget-object v2, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    aput v1, v2, v14

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v8, v1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v9, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    move-object/from16 v7, p0

    invoke-direct {v7, v1}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->toGdxButton(I)I

    move-result v6

    const/4 v1, -0x1

    if-eq v6, v1, :cond_8

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v4, v8

    move v5, v9

    move/from16 v16, v6

    move v6, v14

    move/from16 v7, v16

    move/from16 v18, v8

    move/from16 v19, v9

    move-wide v8, v12

    invoke-direct/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    goto :goto_4

    :cond_8
    move/from16 v16, v6

    move/from16 v18, v8

    move/from16 v19, v9

    :goto_4
    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    aput v18, v1, v14

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    aput v19, v1, v14

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    aput v15, v1, v14

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    aput v15, v1, v14

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    move/from16 v2, v16

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    move v7, v15

    :goto_5
    aput-boolean v7, v1, v14

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    aput v2, v1, v14

    iget-object v1, v10, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    aput v0, v1, v14

    :cond_a
    :goto_6
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public supportsMultitouch(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v0, Lcom/badlogic/gdx/assets/loaders/Wkvw/nEtnPpUF;->cZfiIKNSCsMlxF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
