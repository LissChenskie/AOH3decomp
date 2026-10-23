.class public Laoc/kingdoms/lukasz/map/clouds/Cloud;
.super Ljava/lang/Object;
.source "Cloud.java"


# instance fields
.field private animationStart:Z

.field public fAlpha:F

.field public fFinalAlpha:F

.field public fScale:F

.field public iCloudImageID:I

.field public iHeight_RemoveCloud:I

.field public iMax_WidthHeight:I

.field public iPosX:F

.field public iPosX_SecondSideOfMap:I

.field public iPosY:F

.field public iRotate:I

.field public iShadowX:I

.field public iShadowY:I

.field public isInView:Z

.field private lTime:J


# direct methods
.method public constructor <init>(IIIFI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->animationStart:Z

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iMax_WidthHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iHeight_RemoveCloud:I

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/map/clouds/Cloud;->init(IIIFI)V

    return-void
.end method


# virtual methods
.method public final inViewX()Z
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iMax_WidthHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iMax_WidthHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX:F

    int-to-float v1, v1

    add-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final inViewX2()Z
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iMax_WidthHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iMax_WidthHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iMax_WidthHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final inViewY()Z
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY_Height:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iMax_WidthHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosY:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iMax_WidthHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosY:F

    int-to-float v1, v1

    add-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final init(IIIFI)V
    .locals 2

    iput p1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iCloudImageID:I

    iput p5, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iRotate:I

    int-to-float p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX:F

    int-to-float p2, p3

    iput p2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosY:F

    iput p4, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fScale:F

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget p2, p2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->minAlpha:F

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object p5, p5, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget p5, p5, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->randomAlpha:F

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p5, v0

    float-to-int p5, p5

    const/4 v1, 0x1

    invoke-static {v1, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    add-float/2addr p2, p3

    iput p2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fFinalAlpha:F

    const/4 p2, 0x0

    iput p2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fAlpha:F

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget p2, p2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->shadowX:I

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p5

    mul-float/2addr p2, p5

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iShadowX:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget p2, p2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->shadowY:I

    int-to-float p2, p2

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iShadowY:I

    sget-wide p2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide p2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->lTime:J

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloudMaxDimension:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p4

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iMax_WidthHeight:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    mul-float/2addr p1, p4

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iHeight_RemoveCloud:I

    return-void
.end method

.method public final removeCloud()Z
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosY:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iHeight_RemoveCloud:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final update()V
    .locals 5

    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->moveSpeedX:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosY:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->moveSpeedY:F

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosY:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iCloudImageID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX:F

    :cond_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->animationStart:Z

    if-eqz v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fFinalAlpha:F

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->lTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->spawnAnimationTime:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fFinalAlpha:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fAlpha:F

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->lTime:J

    sub-long/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->spawnAnimationTime:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->animationStart:Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fFinalAlpha:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fAlpha:F

    :cond_1
    return-void
.end method

.method public final updateIsInView()V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/Cloud;->inViewY()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/Cloud;->inViewX()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->isInView:Z

    iput v1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX_SecondSideOfMap:I

    return-void

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/Cloud;->inViewX2()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->isInView:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX_SecondSideOfMap:I

    return-void

    :cond_1
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/clouds/Cloud;->isInView:Z

    return-void
.end method
