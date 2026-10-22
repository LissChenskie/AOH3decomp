.class public Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;
.super Ljava/lang/Object;
.source "ProvinceAnimationDot.java"


# static fields
.field public static final ANIMATION_DURATION:F = 1250.0f


# instance fields
.field public animationTime:J

.field public dotColor:Lcom/badlogic/gdx/graphics/Color;

.field public fPerc:F

.field public iProvinceID:I

.field public posX:I

.field public posY:I


# direct methods
.method public constructor <init>(ILcom/badlogic/gdx/graphics/Color;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->animationTime:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->iProvinceID:I

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->animationTime:J

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result p2

    if-lez p2, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->posX:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->posY:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->posX:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->posY:I

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)Z
    .locals 7

    iget p1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->animationTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x449c4000    # 1250.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->animationTime:J

    iget p1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e19999a    # 0.15f

    iget v6, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    mul-float/2addr v6, v5

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->posX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->posY:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p2

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v3, p2

    iget v4, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledCircle(FFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->dotColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3ee66666    # 0.45f

    iget v6, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    mul-float/2addr v6, v5

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->posX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->posY:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p2

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr p2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    mul-float/2addr p2, v3

    invoke-virtual {v0, v1, v2, p2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledCircle(FFF)V

    :cond_1
    return p1
.end method
