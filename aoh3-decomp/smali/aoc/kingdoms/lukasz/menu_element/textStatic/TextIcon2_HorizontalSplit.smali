.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "TextIcon2_HorizontalSplit.java"


# instance fields
.field public iLineSize:I

.field public iY:I

.field public iconHeight:I

.field public iconWidth:I

.field public imageID:I

.field public maxIconWidth:I

.field public maxWidth:I

.field public sLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 14

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->sLines:Ljava/util/List;

    const/4 v13, 0x0

    iput v13, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iLineSize:I

    iput v13, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iY:I

    iput v13, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->maxWidth:I

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

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->init(Ljava/lang/String;IIIIIIZZZZ)V

    move/from16 v0, p2

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->imageID:I

    move/from16 v1, p7

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->maxIconWidth:I

    move/from16 v1, p8

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->maxWidth:I

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iconWidth:I

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iconHeight:I

    const-string v0, " "

    move-object v1, p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getIconBGWidth()I

    move-result v2

    sub-int v2, p5, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    array-length v3, v1

    const-string v4, ""

    move v5, v13

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v9, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->fontID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v1, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v7, v7

    iput v7, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iTextWidth:I

    iget v7, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iTextWidth:I

    add-int/2addr v6, v7

    if-ge v6, v2, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v1, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    iget-object v6, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->sLines:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v6, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iTextWidth:I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->sLines:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->sLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->sLines:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->sLines:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iTextHeight:I

    :cond_3
    iget-object v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->sLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iLineSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v2, v1

    iget v1, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iTextHeight:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iLineSize:I

    mul-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iLineSize:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->setHeight(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iTextHeight:I

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iLineSize:I

    mul-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iLineSize:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iY:I

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

.method public static getColor_gradientXY()Lcom/badlogic/gdx/graphics/Color;
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
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
.method public buildElementHover()V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    const/4 v3, 0x0

    move-object v5, v2

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->sLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->sLines:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    const/4 v6, 0x0

    sget-object v6, Laoc/kingdoms/lukasz/menusEditor/RJR/ATsAGKCnv;->uCuR:Ljava/lang/String;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->imageID:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getIsHovered()Z

    move-result v4

    const/high16 v7, 0x3f000000    # 0.5f

    if-nez v4, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v7

    goto :goto_1

    :cond_1
    :goto_0
    const v4, 0x3f19999a    # 0.6f

    :goto_1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->maxWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getIconBGWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getHeight()I

    move-result v5

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getColor_gradientXY()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    add-int v3, v1, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->maxWidth:I

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x2

    add-int v3, v1, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->maxWidth:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->maxIconWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iconWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getHeight()I

    move-result v2

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iconHeight:I

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v4, v0, p3

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iconWidth:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iLineSize:I

    if-ge v0, v1, :cond_0

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->fontID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->sLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getIconBGWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v5, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iY:I

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->iTextHeight:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    add-int v6, v1, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorButtonHover(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public getIconBGWidth()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;->maxIconWidth:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
