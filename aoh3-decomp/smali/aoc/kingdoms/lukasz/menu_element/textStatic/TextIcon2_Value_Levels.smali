.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "TextIcon2_Value_Levels.java"


# static fields
.field protected static final ANIMATION_T:I = 0x3e8

.field protected static animationState:I

.field protected static lTimeAnimation:J


# instance fields
.field public iLevel:I

.field public iconHeight:I

.field public iconWidth:I

.field public id:I

.field public imageID:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIII)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->init(Ljava/lang/String;IIIIIIZZZZ)V

    move/from16 v0, p3

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->imageID:I

    move/from16 v1, p9

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->iLevel:I

    move/from16 v1, p8

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->id:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getScale()F

    move-result v1

    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->iconWidth:I

    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->iconHeight:I

    return-void
.end method

.method public static getColor_gradientFull()Lcom/badlogic/gdx/graphics/Color;
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3ee66666    # 0.45f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static getColor_gradientXY()Lcom/badlogic/gdx/graphics/Color;
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 12

    move-object v0, p0

    move-object v8, p1

    move/from16 v9, p4

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getIsHovered()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    :goto_0
    const v5, 0x3f19999a    # 0.6f

    :goto_1
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosX()I

    move-result v1

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v10, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosX()I

    move-result v1

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getTextH()I

    move-result v4

    sub-int/2addr v1, v4

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getTextH()I

    move-result v6

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getColor_gradientXY()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getTextH()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getTextH()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getColor_gradientFull()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getTextH()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getIsHovered()Z

    move-result v1

    const/high16 v11, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    if-eqz v9, :cond_3

    :cond_2
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosX()I

    move-result v1

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->isLeveLActive()Z

    move-result v1

    if-eqz v1, :cond_4

    move v10, v11

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const v10, 0x3e19999a    # 0.15f

    :goto_2
    invoke-virtual {p1, v11, v11, v11, v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getImageID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->iconWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getTextH()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->iconHeight:I

    div-int/lit8 v4, v6, 0x2

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->iconWidth:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getTextToDraw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getTextWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getTextH()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getTextHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    add-int v5, v1, p3

    invoke-virtual {p0, v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->animationState:I

    if-ltz v1, :cond_8

    const-wide/16 v9, 0x3e8

    const/high16 v2, 0x447a0000    # 1000.0f

    if-nez v1, :cond_6

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float/2addr v1, v11

    div-float/2addr v1, v2

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v5, v2

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v5, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v9

    cmp-long v1, v1, v3

    if-gez v1, :cond_7

    sget v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->animationState:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->animationState:I

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->lTimeAnimation:J

    goto/16 :goto_3

    :cond_6
    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float/2addr v1, v11

    div-float/2addr v1, v2

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    sub-int v5, v2, v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    sub-int v5, v2, v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v9

    cmp-long v1, v1, v3

    if-gez v1, :cond_7

    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->animationState:I

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->lTimeAnimation:J

    :cond_7
    :goto_3
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_8
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorButtonHover(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public getCurrent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->id:I

    return v0
.end method

.method public getImageID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->imageID:I

    return v0
.end method

.method public final getImageScale(I)F
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public getScale()F
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->imageID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->getImageScale(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->iLevel:I

    if-nez v1, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    mul-float/2addr v0, v1

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getTextH()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeveLActive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setIsHovered(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setIsHovered(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->lTimeAnimation:J

    const/4 p1, 0x0

    sput p1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value_Levels;->animationState:I

    return-void
.end method
