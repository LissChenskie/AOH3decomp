.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonTopOutliner.java"


# instance fields
.field public imageID:I


# direct methods
.method public constructor <init>(II)V
    .locals 13

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->outliner:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->imageID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->sText:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->iTextPositionX:I

    const/4 v5, 0x0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPaddingX()I

    move-result v1

    add-int v7, v0, v1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move v6, p1

    move v8, p2

    invoke-virtual/range {v1 .. v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->init(Ljava/lang/String;IIIIIIZZZZ)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    move/from16 v0, p4

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->imageID:I

    iget-object v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->sText:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->iTextPositionX:I

    invoke-static/range {p4 .. p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPaddingX()I

    move-result v4

    add-int v6, v0, v4

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move/from16 v7, p3

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->init(Ljava/lang/String;IIIIIIZZZZ)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    move/from16 v0, p5

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->imageID:I

    iget-object v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->sText:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->iTextPositionX:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->init(Ljava/lang/String;IIIIIIZZZZ)V

    return-void
.end method

.method public static getPaddingX()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public buildElementHover()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "SelectMoreThanOneArmy"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    sget-boolean v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->outlinerInView:Z

    if-eqz v3, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "HidePinned"

    goto :goto_0

    :cond_1
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ShowPinned"

    :goto_0
    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;Z)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraX:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getHeight()I

    move-result v1

    add-int/lit8 v5, v1, -0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraX:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getHeight()I

    move-result v1

    add-int/lit8 v5, v1, -0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraX:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getHeight()I

    move-result v1

    add-int/lit8 v5, v1, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraX:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraX:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean p4, Laoc/kingdoms/lukasz/jakowski/Touch;->selectArmiesMode:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e19999a    # 0.15f

    invoke-direct {p4, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d99999a    # 0.075f

    invoke-direct {p4, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p4, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->imageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    add-int v4, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p4, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->imageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    add-int v5, p4, p3

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->imageID:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->imageID:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-boolean p4, Laoc/kingdoms/lukasz/jakowski/Touch;->selectArmiesMode:Z

    if-eqz p4, :cond_1

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v3, 0x3ec00000    # 0.375f

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_1
    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e8ccccd    # 0.275f

    invoke-direct {p4, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    add-int v1, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->imageID:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    add-int v2, p2, p3

    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->imageID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->imageID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->imageID:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraX:I

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->imageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->imageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, v0, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :goto_2
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats_Outliner(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method
