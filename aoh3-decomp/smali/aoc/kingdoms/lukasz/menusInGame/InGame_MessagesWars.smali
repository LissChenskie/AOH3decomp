.class public Laoc/kingdoms/lukasz/menusInGame/InGame_MessagesWars;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_MessagesWars.java"


# static fields
.field public static sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_MessagesWars;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->warBG:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    mul-int/2addr v4, v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v5, v6

    sub-int/2addr v0, v5

    sub-int/2addr v0, v4

    sub-int v5, v0, v3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    const/4 v9, 0x0

    if-le v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    add-int v6, v4, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v4, v0, 0x2

    move v8, v9

    move/from16 v16, v8

    :goto_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    if-ge v8, v0, :cond_3

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v10}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/MessageWar;

    const/4 v13, 0x1

    sget-object v10, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v14, v10, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Ljava/lang/String;

    move-object v10, v0

    move/from16 v11, v16

    move v12, v4

    invoke-direct/range {v10 .. v15}, Laoc/kingdoms/lukasz/menu_element/MessageWar;-><init>(IIZILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    :goto_2
    add-int/2addr v0, v10

    add-int v16, v16, v0

    goto/16 :goto_3

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v10}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/MessageWar;

    const/4 v13, 0x1

    sget-object v10, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v14, v10, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Ljava/lang/String;

    move-object v10, v0

    move/from16 v11, v16

    move v12, v4

    invoke-direct/range {v10 .. v15}, Laoc/kingdoms/lukasz/menu_element/MessageWar;-><init>(IIZILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->warBG:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int v4, v1, v3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->warBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v3, v2

    add-int v8, v1, v3

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move-object v2, v0

    move v3, v5

    move v5, v6

    move v6, v8

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_MessagesWars;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    iput-boolean v9, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_MessagesWars;->drawScrollPositionAlways:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MessagesWars;->getMenuElementsSize()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MessagesWars;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->sparkWidth:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    add-int v5, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    add-int v6, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->sparkWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v7, v0, 0x4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v8, v0, 0x4

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public getVisible()Z
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHideMenuZoomOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
