.class public Laoc/kingdoms/lukasz/menus/Init_SelectMap;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Init_SelectMap.java"


# direct methods
.method public constructor <init>()V
    .locals 19

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0xa

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v3, v3, 0xa

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    move v15, v4

    :goto_0
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    new-instance v14, Laoc/kingdoms/lukasz/menus/Init_SelectMap$1;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v9, v7, Laoc/kingdoms/lukasz/map/map/Map_Data;->Folder:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v8, v0, 0x2

    sub-int v16, v7, v8

    const/16 v17, 0x1

    move-object v7, v14

    move-object/from16 v8, p0

    move v12, v0

    move v13, v15

    move-object/from16 v18, v14

    move/from16 v14, v16

    move/from16 v16, v0

    move v0, v15

    move/from16 v15, v17

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menus/Init_SelectMap$1;-><init>(Laoc/kingdoms/lukasz/menus/Init_SelectMap;Ljava/lang/String;IIIIIZ)V

    move-object/from16 v7, v18

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    add-int v15, v0, v7

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v16

    goto :goto_0

    :cond_0
    move v0, v15

    new-instance v4, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "SelectMapType"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v4

    move v10, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v5, v1, v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v8, v1

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v8, v3

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v3, v5

    move v4, v7

    move v5, v8

    move v7, v9

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menus/Init_SelectMap;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d40c0c1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v2, p2, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int v3, p3, v1

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v5, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x3

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    add-int v3, v1, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Init_SelectMap;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Init_SelectMap;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Init_SelectMap;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Init_SelectMap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Init_SelectMap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Init_SelectMap;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Init_SelectMap;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Init_SelectMap;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Init_SelectMap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Init_SelectMap;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v0

    move-object v0, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method
