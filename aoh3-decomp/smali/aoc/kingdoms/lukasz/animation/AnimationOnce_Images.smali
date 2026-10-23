.class public Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;
.super Ljava/lang/Object;
.source "AnimationOnce_Images.java"


# instance fields
.field private ANIMATION_LAST_UPDATE_TIME:J

.field private animationFinished:Z

.field private currentFrameID:I

.field private fPosX:F

.field private fPosY:F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->currentFrameID:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->animationFinished:Z

    int-to-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->fPosX:F

    int-to-float p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->fPosY:F

    sget-wide p1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide p1, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->ANIMATION_LAST_UPDATE_TIME:J

    return-void
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->getAnimationData_Images()Laoc/kingdoms/lukasz/animation/AnimationData_Images;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->currentFrameID:I

    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->drawFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    return-void
.end method

.method public getAnimationData_Images()Laoc/kingdoms/lukasz/animation/AnimationData_Images;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationManager:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->animationMove:Laoc/kingdoms/lukasz/animation/AnimationData_Images;

    return-object v0
.end method

.method public getAnimationFinished()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->animationFinished:Z

    return v0
.end method

.method public getPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->fPosX:F

    float-to-int v0, v0

    return v0
.end method

.method public getPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->fPosY:F

    float-to-int v0, v0

    return v0
.end method

.method public setPosX(F)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->fPosX:F

    return-void
.end method

.method public setPosY(F)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->fPosY:F

    return-void
.end method

.method public update()V
    .locals 6

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->ANIMATION_LAST_UPDATE_TIME:J

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->getAnimationData_Images()Laoc/kingdoms/lukasz/animation/AnimationData_Images;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->ANIMATION_FRAME_TIME:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->currentFrameID:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->currentFrameID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->getAnimationData_Images()Laoc/kingdoms/lukasz/animation/AnimationData_Images;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->getNumOfFrames()I

    move-result v2

    if-lt v0, v2, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images$1;->$SwitchMap$aoc$kingdoms$lukasz$animation$AnimationData_Type:[I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->getAnimationData_Images()Laoc/kingdoms/lukasz/animation/AnimationData_Images;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->animationType:Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/animation/AnimationData_Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iput v2, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->currentFrameID:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->animationFinished:Z

    goto :goto_0

    :cond_1
    iput v2, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->currentFrameID:I

    :cond_2
    :goto_0
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->ANIMATION_LAST_UPDATE_TIME:J

    :cond_3
    return-void
.end method
