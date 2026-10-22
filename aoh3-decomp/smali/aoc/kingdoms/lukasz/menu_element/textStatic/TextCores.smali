.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "TextCores.java"


# instance fields
.field public drawRed:Z

.field public flagHeight:I

.field public flagWidth:I

.field public iCivsSize:I

.field public iProvinceID:I

.field public lCivID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;IIIIIZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IIIIIZ)V"
        }
    .end annotation

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->lCivID:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->iCivsSize:I

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

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->init(Ljava/lang/String;IIIIIIZZZZ)V

    move/from16 v0, p7

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->iProvinceID:I

    move-object v0, p2

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->lCivID:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->iCivsSize:I

    move/from16 v0, p8

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->drawRed:Z

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v0, v0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getImageScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->flagWidth:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v0, v0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getImageScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->flagHeight:I

    return-void
.end method

.method private final getImageScale()F
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public buildElementHover()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->iProvinceID:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getHoverCores(IZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 14

    move-object v1, p0

    move-object v9, p1

    move/from16 v10, p4

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {v0, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getHeight()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    iget-boolean v0, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->drawRed:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v5, v6, :cond_0

    move v5, v11

    goto :goto_0

    :cond_0
    const v5, 0x3e99999a    # 0.3f

    :goto_0
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_1
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->iCivsSize:I

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    const/4 v12, 0x0

    if-eq v0, v2, :cond_3

    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->lCivID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v12

    :goto_1
    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v0, v2, :cond_2

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->lCivID:Ljava/util/List;

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->lCivID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->iCivsSize:I

    :cond_3
    const/high16 v13, 0x3f800000    # 1.0f

    :try_start_0
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getHeight()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    int-to-float v2, v2

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->iProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    sub-float v2, v13, v2

    mul-float/2addr v0, v2

    float-to-int v6, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getWidth()I

    move-result v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxProgress(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v10, :cond_6

    :cond_5
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getHeight()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_6
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getTextToDraw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->iTextHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v6, v0, p3

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :goto_3
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->iCivsSize:I

    if-ge v12, v0, :cond_8

    const/high16 v0, 0x40000000    # 2.0f

    :try_start_1
    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->lCivID:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_7

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->lCivID:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosX()I

    move-result v3

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->flagWidth:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v12

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getTextWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getImageScale()F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v0

    float-to-int v5, v5

    sub-int/2addr v3, v5

    add-int v5, v3, p3

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->flagWidth:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->flagHeight:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_4

    :cond_7
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosX()I

    move-result v3

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->flagWidth:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v12

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getTextWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getImageScale()F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v0

    float-to-int v5, v5

    sub-int/2addr v3, v5

    add-int v5, v3, p3

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->flagWidth:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->flagHeight:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosX()I

    move-result v3

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->flagWidth:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v12

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getTextWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getImageScale()F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v0

    float-to-int v5, v5

    sub-int/2addr v3, v5

    add-int v5, v3, p3

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->flagWidth:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->flagHeight:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_4
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flag_rect:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosX()I

    move-result v3

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->flagWidth:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v12

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getTextWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v5, v5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getImageScale()F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v0

    float-to-int v0, v5

    sub-int/2addr v3, v0

    add-int v5, v3, p3

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->flagWidth:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->flagHeight:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    :cond_8
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextCores;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorButtonHover(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method
