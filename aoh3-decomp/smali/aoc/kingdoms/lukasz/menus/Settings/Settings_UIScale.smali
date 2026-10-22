.class public Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Settings_UIScale.java"


# direct methods
.method public constructor <init>()V
    .locals 22

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v2, 0x2

    new-instance v5, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$1;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Back"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    mul-int/lit8 v18, v0, 0x2

    sub-int v14, v7, v18

    const/4 v15, 0x1

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v5

    move-object/from16 v8, p0

    move v12, v0

    move v13, v3

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$1;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/16 v19, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v3, v5

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "UIScale"

    invoke-virtual {v7, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v9, v7, 0x4

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v12, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x4

    add-int v13, v7, v11

    const/4 v14, 0x0

    sget-object v14, Lcom/google/android/gms/internal/tasks/Vhe/SwmJtrccN;->pjFxkfmgSFRhc:Ljava/lang/String;

    move-object v7, v5

    move v11, v3

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    new-instance v5, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$2;

    const/4 v9, 0x0

    sget-object v9, Landroidx/core/internal/oiV/CoLRpi;->ZoveuisnlWyKYpy:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    sub-int v14, v7, v18

    const/16 v16, 0x1

    const/16 v17, 0x44

    sget-boolean v7, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    const/4 v13, 0x0

    if-nez v7, :cond_0

    sget-boolean v7, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    if-nez v7, :cond_0

    move/from16 v20, v19

    goto :goto_0

    :cond_0
    move/from16 v20, v13

    :goto_0
    move-object v7, v5

    move-object/from16 v8, p0

    move v12, v0

    move v13, v3

    move-object/from16 v21, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v20

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$2;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v3, v5

    new-instance v5, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$3;

    const-string v9, "1"

    const/4 v10, 0x1

    const/4 v11, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    sub-int v14, v7, v18

    const/4 v15, 0x1

    const/16 v16, 0x5a

    sget-boolean v7, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    if-eqz v7, :cond_1

    sget-boolean v7, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    if-nez v7, :cond_1

    move/from16 v17, v19

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    :goto_1
    move-object v7, v5

    move-object/from16 v8, p0

    move v12, v0

    move v13, v3

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$3;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v3, v5

    new-instance v5, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$4;

    const-string v9, "2"

    const/4 v10, 0x1

    const/4 v11, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    sub-int v14, v7, v18

    const/4 v15, 0x1

    const/16 v16, 0x6e

    sget-boolean v17, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    move-object v7, v5

    move v13, v3

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$4;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v9, 0x0

    invoke-direct {v0, v9, v9, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v2, v21

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-direct {v1, v0, v9, v9, v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v0, 0xa

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v3, v0, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->drawScrollPositionAlways:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    const/4 v6, 0x0

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method
