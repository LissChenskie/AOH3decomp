.class public Laoc/kingdoms/lukasz/menu_element/IconCourt;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "IconCourt.java"


# instance fields
.field public id:I

.field public imageID:I

.field public widthDraw:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    move v0, p2

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/IconCourt;->imageID:I

    move/from16 v0, p7

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/IconCourt;->id:I

    move/from16 v0, p8

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->init(Ljava/lang/String;IIIIIIZZZZ)V

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
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosX()I

    move-result v1

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosY()I

    move-result v2

    add-int v9, v2, p3

    sget-boolean v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->isOptionHovered:Z

    const v10, 0x3ee66666    # 0.45f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-eqz v2, :cond_2

    sget-wide v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->TEXT_TIME:J

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->TEXT_ANIMATION_TIME:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->TEXT_TIME:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->TEXT_ANIMATION_TIME:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    neg-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    add-int/2addr v3, v4

    move v13, v2

    move v14, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move v14, v3

    move v13, v11

    :goto_0
    add-int/lit8 v15, v14, 0x1

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    add-int/2addr v2, v15

    add-int v16, v1, v2

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v5, v13, v11

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move-object/from16 v2, p1

    move/from16 v3, v16

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v5, v13

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move-object/from16 v2, p1

    move/from16 v3, v16

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v5, v13

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move-object/from16 v2, p1

    move/from16 v3, v16

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE3:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE3:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE3:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e19999a    # 0.15f

    mul-float/2addr v5, v13

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getTextWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move-object/from16 v2, p1

    move/from16 v3, v16

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    mul-float v2, v13, v10

    invoke-direct {v1, v12, v12, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/lit8 v4, v9, 0x1

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    add-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v2, -0x2

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    sub-int v16, v16, v1

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    if-eqz v14, :cond_1

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, v13

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-direct {v6, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->fontID:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getTextToDraw()Ljava/lang/String;

    move-result-object v3

    invoke-super/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v1

    add-int v1, v16, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v9

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->iTextHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_1
    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->fontID:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getTextToDraw()Ljava/lang/String;

    move-result-object v3

    invoke-super/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v1

    add-int v1, v16, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v9

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->iTextHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    sub-int v16, v16, v15

    goto :goto_2

    :cond_2
    move/from16 v16, v1

    :goto_2
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move/from16 v3, v16

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v12, v12, v12, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    add-int/2addr v2, v9

    add-int/lit8 v4, v2, -0x1

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->id:I

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move/from16 v3, v16

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v4, v9, v2

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    div-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v8, :cond_5

    :cond_4
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f266666    # 0.65f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move/from16 v3, v16

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_5
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->id:I

    if-ne v1, v2, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/menu/MenuManager;->sparksAnimationSidebarActive:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v8, :cond_8

    :cond_7
    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/menu/MenuManager;->sparksAnimationSidebar:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_8
    :goto_3
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getImageID()I

    move-result p4

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getImageID()I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getImageID()I

    move-result p3

    invoke-static {p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    invoke-virtual {p4, p1, v0, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getImageID()I

    move-result p4

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p4

    int-to-float p4, p4

    const v0, 0x3f8ccccd    # 1.1f

    mul-float/2addr p4, v0

    float-to-int v5, p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getImageID()I

    move-result p4

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, v0

    float-to-int v6, p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getImageID()I

    move-result p4

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p4, p2

    div-int/lit8 p2, v5, 0x2

    sub-int v3, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    div-int/lit8 p3, v6, 0x2

    sub-int v4, p2, p3

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_1
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->id:I

    if-ne v0, v1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public getCurrent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->id:I

    return v0
.end method

.method public getImageID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->imageID:I

    return v0
.end method

.method public getPosX()I
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->IN_GAME_LEFT_PADDING_EXTRA:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 2

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->isOptionHovered:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v0

    return v0
.end method
