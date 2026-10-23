.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonStatsBudget_Balance.java"


# instance fields
.field public iTextHeight2:I

.field public iTextWidth2:I

.field public iconHeight:I

.field public iconWidth:I

.field public imageID:I

.field public lastValue:F

.field public nColor:Lcom/badlogic/gdx/graphics/Color;

.field public nColorA:Lcom/badlogic/gdx/graphics/Color;

.field public nColorH:Lcom/badlogic/gdx/graphics/Color;

.field public sText2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 14

    move-object v12, p0

    move/from16 v13, p3

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const v0, -0x368c6e9b

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->lastValue:F

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->nColor:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->init(Ljava/lang/String;IIIIIIZZZZ)V

    iput v13, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->imageID:I

    invoke-direct {p0, v13}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getImageScale(I)F

    move-result v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->iconWidth:I

    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->iconHeight:I

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->setText2(Ljava/lang/String;)V

    return-void
.end method

.method public static final getBoxAlpha(ZZZ)F
    .locals 0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_0

    const p0, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x3f333333    # 0.7f

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_2
    const p0, 0x3e4ccccd    # 0.2f

    :goto_0
    return p0
.end method

.method private final getImageScale(I)F
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 11

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getClickable()Z

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getIsHovered()Z

    move-result v5

    invoke-static {v4, v5, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getBoxAlpha(ZZZ)F

    move-result p4

    invoke-direct {v0, v1, v2, v3, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getPosX()I

    move-result p4

    add-int v6, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getPosY()I

    move-result p4

    add-int v7, p4, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getHeight()I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3ee66666    # 0.45f

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v4, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getPosX()I

    move-result p4

    add-int v6, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getPosY()I

    move-result p4

    add-int v7, p4, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getHeight()I

    move-result v9

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v4, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getPosX()I

    move-result p4

    add-int v6, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getPosY()I

    move-result p4

    add-int v7, p4, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getHeight()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p4, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getPosX()I

    move-result p4

    add-int v4, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getPosY()I

    move-result p2

    add-int v5, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getHeight()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p4

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->imageID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getTextWidth()I

    move-result v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->iTextWidth2:I

    add-int/2addr v4, v5

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->iconWidth:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getTextWidth()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->iTextWidth2:I

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int v5, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getHeight()I

    move-result v4

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->iconHeight:I

    sub-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int v6, v2, p3

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->iconWidth:I

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v10, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getTextToDraw()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getTextWidth()I

    move-result v3

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->iTextWidth2:I

    add-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->iconWidth:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v12, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->iTextHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v13, v2, p3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getColor2(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getText2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getPosX()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getTextWidth()I

    move-result v5

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->iTextWidth2:I

    add-int/2addr v5, v6

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->iconWidth:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getTextWidth()I

    move-result v5

    add-int/2addr v4, v5

    add-int v4, v4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getPosY()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->iTextHeight2:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int v5, v5, p3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->nColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_DISABLED:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method

.method protected getColor2(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public getText2()Ljava/lang/String;
    .locals 5

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->lastValue:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    const-string v3, ""

    if-lez v2, :cond_0

    const-string v4, "+"

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v4, 0x447a0000    # 1000.0f

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-int v3, v0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    const/16 v3, 0xa

    goto :goto_1

    :cond_2
    const/16 v3, 0x64

    :goto_1
    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->setText2(Ljava/lang/String;)V

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->lastValue:F

    if-nez v2, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->nColor:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3

    :cond_3
    if-lez v2, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->nColor:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->nColor:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    :cond_5
    :goto_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->sText2:Ljava/lang/String;

    return-object v0
.end method

.method public final setText2(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->sText2:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->iTextWidth2:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Balance;->iTextHeight2:I

    return-void
.end method
