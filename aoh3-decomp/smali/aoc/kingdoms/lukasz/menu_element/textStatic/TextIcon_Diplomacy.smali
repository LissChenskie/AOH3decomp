.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "TextIcon_Diplomacy.java"


# instance fields
.field public final ANIMATION_T:I

.field public animationState:I

.field public imageID:I

.field public lTimeAnimation:J

.field public maxWidth:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->lTimeAnimation:J

    const/4 v0, 0x0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->animationState:I

    const/16 v0, 0x5dc

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->ANIMATION_T:I

    const/4 v1, 0x0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->init(Ljava/lang/String;IIIIIIZZZZ)V

    move v0, p1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->imageID:I

    move/from16 v0, p6

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->maxWidth:I

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->lTimeAnimation:J

    return-void
.end method


# virtual methods
.method public canBeHovered()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getWidth()I

    move-result v2

    sget-boolean v3, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->inAnimation:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->fAnimationPerc:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    :cond_0
    move v10, v2

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    add-int v12, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v3, v12

    move v5, v10

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getIsHovered()Z

    move-result v5

    const v8, 0x3eb33333    # 0.35f

    const v13, 0x3f266666    # 0.65f

    if-nez v5, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    move v5, v8

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v13

    :goto_1
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v3, v12

    move v5, v10

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v7, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-boolean v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->inAnimation:Z

    const v7, 0x3ee66666    # 0.45f

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->fAnimationPerc:F

    sub-float v5, v8, v5

    mul-float/2addr v5, v13

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v12

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->fAnimationPerc:F

    sub-float v5, v8, v5

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v12

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->animationState:I

    if-ltz v1, :cond_6

    const-wide/16 v13, 0x5dc

    const v2, 0x3f0ccccd    # 0.55f

    const v3, 0x44bb8000    # 1500.0f

    if-nez v1, :cond_4

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v6, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->lTimeAnimation:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    mul-float/2addr v1, v8

    div-float/2addr v1, v3

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v8, v1

    mul-float/2addr v8, v2

    invoke-direct {v3, v4, v5, v6, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v2

    div-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    move v3, v12

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v13

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->animationState:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->animationState:I

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->lTimeAnimation:J

    goto :goto_3

    :cond_4
    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v6, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->lTimeAnimation:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    mul-float/2addr v1, v8

    div-float/2addr v1, v3

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v1, v2

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v2

    div-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    move v3, v12

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v13

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->animationState:I

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->lTimeAnimation:J

    :cond_5
    :goto_3
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_6
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v13, 0x0

    const/high16 v14, 0x3e800000    # 0.25f

    invoke-direct {v1, v13, v13, v13, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move v3, v12

    move v5, v10

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v13, v13, v13, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v13, v13, v13, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, p3

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 2

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->imageID:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->imageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;->imageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, v0, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public getColorBar()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_RED:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
