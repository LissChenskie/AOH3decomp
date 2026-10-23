.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonStatsRectIMG_Bonuses_Right.java"


# instance fields
.field public fontID2:I

.field public iTextBonusW:I

.field public iconHeight:I

.field public iconWidth:I

.field public imageID:I

.field public maxIconWidth:I

.field public sText2:Ljava/lang/String;

.field public sText_Orginal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p8

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->init(Ljava/lang/String;IIIIIIZZZZ)V

    move-object/from16 v0, p1

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->sText_Orginal:Ljava/lang/String;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->fontID2:I

    iput v14, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->imageID:I

    iput v15, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->maxIconWidth:I

    invoke-virtual {v12, v14}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getImageScale(I)F

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

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iconWidth:I

    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iconHeight:I

    iput-object v13, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->sText2:Ljava/lang/String;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->fontID2:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, v13}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iTextBonusW:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iTextWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v15

    iget v5, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iTextBonusW:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIIII)V
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move/from16 v14, p8

    move/from16 v15, p10

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p9

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->init(Ljava/lang/String;IIIIIIZZZZ)V

    iput v15, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->fontID2:I

    move/from16 v0, p3

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->imageID:I

    iput v14, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->maxIconWidth:I

    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iconWidth:I

    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iconHeight:I

    iput-object v13, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->sText2:Ljava/lang/String;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, v13}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iTextBonusW:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iTextWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x9

    add-int/2addr v4, v14

    iget v5, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iTextBonusW:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
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


# virtual methods
.method public buildElementHover()V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->sText_Orginal:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->sText2:Ljava/lang/String;

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->imageID:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getClickable()Z

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getIsHovered()Z

    move-result v5

    invoke-static {v4, v5, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getBoxAlpha(ZZZ)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getIsHovered()Z

    move-result v4

    const v7, 0x3eb33333    # 0.35f

    if-nez v4, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v7

    goto :goto_1

    :cond_1
    :goto_0
    const v4, 0x3f266666    # 0.65f

    :goto_1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->maxIconWidth:I

    add-int/2addr v4, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->maxIconWidth:I

    add-int/2addr v4, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->maxIconWidth:I

    add-int/2addr v4, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    add-int v3, v1, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->maxIconWidth:I

    add-int/2addr v4, v1

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->maxIconWidth:I

    add-int/2addr v4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x2

    add-int v3, v1, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->maxIconWidth:I

    add-int/2addr v4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->maxIconWidth:I

    add-int/2addr v4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 14

    move-object v0, p0

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->imageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosX()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->maxIconWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iconWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getHeight()I

    move-result v3

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iconHeight:I

    sub-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int v5, v1, p3

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iconWidth:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getTextToDraw()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->maxIconWidth:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v11, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iTextHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v12, v1, p3

    move/from16 v1, p4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    move-object v8, p1

    invoke-static/range {v8 .. v13}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->fontID2:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getText2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iTextBonusW:I

    sub-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iTextHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    add-int v5, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->getColorBonus()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getColorBonus()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public final getImageScale(I)F
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

.method public getText2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->sText2:Ljava/lang/String;

    return-object v0
.end method

.method public setText2(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->sText2:Ljava/lang/String;

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->fontID2:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->sText2:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;->iTextBonusW:I

    return-void
.end method
