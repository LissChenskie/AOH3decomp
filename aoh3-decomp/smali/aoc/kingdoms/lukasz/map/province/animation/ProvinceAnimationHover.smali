.class public Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;
.super Ljava/lang/Object;
.source "ProvinceAnimationHover.java"


# instance fields
.field public final START_ALPHA:I

.field public final TIME_UPDATE:I

.field public backAnimation:Z

.field public fAlpha:F

.field public iColorStepID:I

.field public iStepID:I

.field public lTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->START_ALPHA:I

    const/16 v0, 0x28

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->TIME_UPDATE:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->lTime:J

    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iStepID:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->backAnimation:Z

    return-void
.end method


# virtual methods
.method public final getAlpha()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    return v0
.end method

.method public final getBackAnimation()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->backAnimation:Z

    return v0
.end method

.method public final getColorStepID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iColorStepID:I

    return v0
.end method

.method public final getStepID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iStepID:I

    return v0
.end method

.method public final resetAnimationData()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->lTime:J

    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iStepID:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->backAnimation:Z

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iColorStepID:I

    return-void
.end method

.method public final update()V
    .locals 6

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->lTime:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v4, 0x28

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iStepID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iStepID:I

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->backAnimation:Z

    const/high16 v1, 0x40d00000    # 6.5f

    if-eqz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iColorStepID:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iColorStepID:I

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iColorStepID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iColorStepID:I

    :goto_0
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->lTime:J

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iStepID:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->backAnimation:Z

    if-eqz v0, :cond_1

    const/high16 v1, 0x437f0000    # 255.0f

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iStepID:I

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->backAnimation:Z

    :cond_2
    return-void
.end method
