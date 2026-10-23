.class public Laoc/kingdoms/lukasz/menusEditor/ManageMods;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ManageMods.java"


# direct methods
.method public constructor <init>()V
    .locals 23

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

    new-instance v5, Laoc/kingdoms/lukasz/menusEditor/ManageMods$1;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Back"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, -0x1

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    mul-int/lit8 v19, v0, 0x2

    sub-int v14, v7, v19

    const/4 v15, 0x1

    move-object v7, v5

    move-object/from16 v8, p0

    move v12, v0

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusEditor/ManageMods$1;-><init>(Laoc/kingdoms/lukasz/menusEditor/ManageMods;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    add-int/2addr v7, v4

    move v15, v5

    move/from16 v20, v7

    :goto_0
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledAll:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v15, v7, :cond_0

    new-instance v14, Laoc/kingdoms/lukasz/menusEditor/ManageMods$2;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersAll_ModName:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    sub-int v13, v7, v19

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int v17, v7, v8

    const/16 v18, 0x1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledAll:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->isTurnedOn(Ljava/lang/String;)Z

    move-result v21

    move-object v7, v14

    move-object/from16 v8, p0

    move v11, v0

    move/from16 v12, v20

    move-object v5, v14

    move/from16 v14, v16

    move/from16 v22, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v22

    move/from16 v18, v21

    invoke-direct/range {v7 .. v18}, Laoc/kingdoms/lukasz/menusEditor/ManageMods$2;-><init>(Laoc/kingdoms/lukasz/menusEditor/ManageMods;Ljava/lang/String;IIIIIIZIZ)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    add-int v20, v20, v5

    add-int/lit8 v15, v22, 0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_1
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersAll:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    new-instance v15, Laoc/kingdoms/lukasz/menusEditor/ManageMods$3;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersAll:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    sub-int v13, v7, v19

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int v16, v7, v8

    const/16 v17, 0x1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersAll:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->isTurnedOn(Ljava/lang/String;)Z

    move-result v18

    move-object v7, v15

    move-object/from16 v8, p0

    move v11, v0

    move/from16 v12, v20

    move/from16 v21, v0

    move-object v0, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v5

    invoke-direct/range {v7 .. v18}, Laoc/kingdoms/lukasz/menusEditor/ManageMods$3;-><init>(Laoc/kingdoms/lukasz/menusEditor/ManageMods;Ljava/lang/String;IIIIIIZIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v4

    add-int v20, v20, v0

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v21

    goto :goto_1

    :cond_1
    new-instance v4, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "InstalledMods"

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v4

    move v10, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v5, v1, v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v3, v5

    move v4, v7

    move v5, v8

    move v7, v9

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/ManageMods;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/ManageMods;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/ManageMods;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/ManageMods;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/ManageMods;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/ManageMods;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/ManageMods;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/ManageMods;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/ManageMods;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/ManageMods;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/ManageMods;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method
