.class public Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;
.super Ljava/lang/Object;
.source "ProvinceAnimation.java"


# instance fields
.field public final START_PROVINCE_ALPHA:I

.field public final START_PROVINCE_BORDER_ALPHA:I

.field public final TIME_UPDATE:I

.field public backAnimation:Z

.field public backAnimationBorder:Z

.field public fAlpha:F

.field public iBorderAlpha:I

.field public iColorStepID:I

.field public iStepID:I

.field public iStepIDBorder:I

.field public lTime:J

.field public lTimeBorder:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->START_PROVINCE_ALPHA:I

    const/16 v0, 0xff

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->START_PROVINCE_BORDER_ALPHA:I

    const/16 v1, 0x2d

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->TIME_UPDATE:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->lTime:J

    const/high16 v3, 0x41f00000    # 30.0f

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    const/4 v3, 0x0

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepID:I

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimation:Z

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->lTimeBorder:J

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepIDBorder:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimationBorder:Z

    return-void
.end method


# virtual methods
.method public final getAlpha()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    return v0
.end method

.method public final getBackAnimation()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimation:Z

    return v0
.end method

.method public final getBorderAlpha()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    return v0
.end method

.method public final getColorStepID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iColorStepID:I

    return v0
.end method

.method public final getStepID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepID:I

    return v0
.end method

.method public final resetAnimationData()V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->lTime:J

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepID:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimation:Z

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iColorStepID:I

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->lTimeBorder:J

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepIDBorder:I

    const/16 v1, 0xff

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimationBorder:Z

    return-void
.end method

.method public final update()V
    .locals 6

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->lTime:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v4, 0x2d

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepID:I

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimation:Z

    const/high16 v1, 0x3fa00000    # 1.25f

    if-eqz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iColorStepID:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iColorStepID:I

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iColorStepID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iColorStepID:I

    :goto_0
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->lTime:J

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepID:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimation:Z

    if-eqz v2, :cond_1

    const/high16 v3, 0x41f00000    # 30.0f

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    const/16 v3, 0xff

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepID:I

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimation:Z

    iget-boolean v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimationBorder:Z

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimationBorder:Z

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1c2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x258

    :goto_1
    add-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->lTime:J

    :cond_3
    return-void
.end method
