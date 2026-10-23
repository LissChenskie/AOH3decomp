.class public Laoc/kingdoms/lukasz/menu/ClickAnimation;
.super Ljava/lang/Object;
.source "ClickAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:F = 400.0f


# instance fields
.field public animationTime:J

.field public clickXY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;",
            ">;"
        }
    .end annotation
.end field

.field public clickXYSize:I

.field public extraSpeed:F

.field public fPerc:F

.field public iHMax:I

.field public iWMax:I

.field public iX:I

.field public iY:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->animationTime:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXYSize:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->iX:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->iY:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->iWMax:I

    iput p4, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->iHMax:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 p2, 0x32

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    const p2, 0x3faccccd    # 1.35f

    add-float/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->extraSpeed:F

    sget-wide p1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide p1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->animationTime:J

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_ANIM_X:[F

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    new-instance v0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    int-to-float v1, p3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_ANIM_X:[F

    aget v2, v2, p1

    mul-float/2addr v1, v2

    int-to-float v2, p4

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_ANIM_Y:[F

    aget v3, v3, p1

    mul-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_ANIM_SPEED_X:[F

    aget v3, v3, p1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_ANIM_SPEED_Y:[F

    aget v4, v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;-><init>(FFFF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXYSize:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)Z
    .locals 8

    iget p1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->animationTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43c80000    # 400.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->animationTime:J

    iget p1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ClickAnimation;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ClickAnimation;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ClickAnimation;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3f266666    # 0.65f

    iget v7, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    mul-float/2addr v7, v6

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    :goto_1
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXYSize:I

    if-ge v1, v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->iX:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    iget v3, v3, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fX:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->iY:I

    neg-int v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    iget v4, v4, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fY:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    iget v4, v4, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->width:F

    iget v5, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledCircle(FFF)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    iget v2, v0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fX:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    iget v3, v3, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->speedX:F

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->extraSpeed:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fX:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    iget v2, v0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fY:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    iget v3, v3, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->speedY:F

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->extraSpeed:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3e800000    # 0.25f

    iget v5, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    mul-float/2addr v5, v4

    const/high16 v4, 0x3f400000    # 0.75f

    add-float/2addr v5, v4

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fY:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return p1
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
