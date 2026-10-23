.class public Laoc/kingdoms/lukasz/map/clouds/CloudsManager;
.super Ljava/lang/Object;
.source "CloudsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;,
        Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;
    }
.end annotation


# static fields
.field public static updateInViewID:I


# instance fields
.field public cloudsInterface:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;

.field public cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

.field private fDimAlpha:F

.field private iCloudsSize:I

.field public imageCloud:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public imageCloudMaxDimension:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lClouds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/clouds/Cloud;",
            ">;"
        }
    .end annotation
.end field

.field private lTimeDimInAlpha:J

.field private lTimeDimOutAlpha:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloudMaxDimension:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lTimeDimOutAlpha:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lTimeDimInAlpha:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    new-instance v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    new-instance v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$1;-><init>(Laoc/kingdoms/lukasz/map/clouds/CloudsManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsInterface:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->readSettings()V

    return-void
.end method


# virtual methods
.method public final addCloud()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->addCloud(II)V

    return-void
.end method

.method public final addCloud(II)V
    .locals 8

    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->maxNumOfCloudsInTheGame:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->numOfCloudImages:I

    if-lez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v4, 0x14

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v5, 0x19

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v2, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v2, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v6, v2, v4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v4, 0x168

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    move-object v2, v1

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/clouds/Cloud;-><init>(IIIFI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    :cond_0
    return-void
.end method

.method public final drawClouds(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->drawCloudsMinScale:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->drawCloudsMaxScale:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lTimeDimOutAlpha:J

    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lTimeDimInAlpha:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->spawnAnimationTime:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->drawClouds(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_0

    :cond_1
    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lTimeDimOutAlpha:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->spawnAnimationTime:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float/2addr v0, v2

    sub-float/2addr v2, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->spawnAnimationTime:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->fDimAlpha:F

    mul-float/2addr v2, v3

    float-to-long v4, v2

    sub-long/2addr v0, v4

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lTimeDimInAlpha:J

    const v0, 0x3c23d70a    # 0.01f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    invoke-virtual {p0, p1, v3}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->drawClouds(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_2
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final drawClouds(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->updateClouds()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;->isInView:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fAlpha:F

    mul-float/2addr v3, p2

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iCloudImageID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v2, v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX:F

    float-to-int v2, v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v4, v4, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX_SecondSideOfMap:I

    add-int/2addr v2, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v4, v4, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iShadowX:I

    add-int v5, v2, v4

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v2, v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosY:F

    float-to-int v2, v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v4, v4, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iShadowY:I

    add-int v6, v2, v4

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v2, v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fScale:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v7, v2, v4

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v2, v2, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iRotate:I

    int-to-float v8, v2

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    sub-float v1, v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    mul-float/2addr p2, v1

    :cond_2
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;->isInView:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fAlpha:F

    mul-float/2addr v3, p2

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iCloudImageID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX:F

    float-to-int v1, v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v4, v4, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosX_SecondSideOfMap:I

    add-int/2addr v1, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v4

    add-int v5, v1, v4

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iPosY:F

    float-to-int v1, v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    add-int v6, v1, v4

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v7, v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;->fScale:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;->iRotate:I

    int-to-float v8, v1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public loadClouds()Z
    .locals 1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->MOBILE_LOAD_CLOUDS:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final loadCloudsImages()V
    .locals 5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->loadClouds()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->numOfCloudImages:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gfx/clouds/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->numOfCloudImages:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloudMaxDimension:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v1, 0x19

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->addCloud()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final randomSpawnCloud()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->spawnCloudChance:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->addCloud()V

    :cond_0
    return-void
.end method

.method public final readSettings()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    if-eqz v1, :cond_0

    const-string v1, "Config.json"

    goto :goto_0

    :cond_0
    const-string v1, "ConfigLow.json"

    :goto_0
    const-string v2, "gfx/clouds/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const-class v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    const v1, 0x3dcccccd    # 0.1f

    iget v2, v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->moveSpeedY:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->moveSpeedY:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->randomAlpha:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->randomAlpha:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->loadClouds()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->numOfCloudImages:I

    :cond_1
    return-void
.end method

.method public final updateClouds()V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/clouds/Cloud;->removeCloud()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->randomSpawnCloud()V

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/clouds/Cloud;->update()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->updateInViewID:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x8

    sput v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->updateInViewID:I

    :goto_2
    iget v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/clouds/Cloud;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/clouds/Cloud;->updateIsInView()V

    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final updateCloudsInterface()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CLOUDS:Z

    if-nez v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$2;-><init>(Laoc/kingdoms/lukasz/map/clouds/CloudsManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsInterface:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->lClouds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->iCloudsSize:I

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$3;-><init>(Laoc/kingdoms/lukasz/map/clouds/CloudsManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsInterface:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;

    :goto_0
    return-void
.end method
