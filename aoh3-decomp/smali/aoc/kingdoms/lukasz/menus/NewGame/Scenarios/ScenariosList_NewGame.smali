.class public Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenariosList_NewGame.java"


# static fields
.field public static iYPos:I


# instance fields
.field private iHeight:I

.field private iWidth:I

.field private iXPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iXPos:I

    const/16 v1, 0x1e0

    iput v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iWidth:I

    iput v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iHeight:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    neg-int v2, v2

    iput v2, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iXPos:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iWidth:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iHeight:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v2, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iYPos:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios;->SCENARIOS_SIZE:I

    add-int/lit8 v4, v4, -0x1

    move v5, v0

    :goto_0
    if-ltz v4, :cond_2

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Campaign:Z

    if-nez v6, :cond_1

    new-instance v6, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame$1;

    invoke-direct {v6, p0, v2, v3, v4}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame$1;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;III)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    if-ne v4, v6, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    :cond_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v6, v1

    add-int/2addr v2, v6

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    if-ge v2, v4, :cond_5

    move v2, v0

    move v4, v2

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sub-int/2addr v4, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    move v4, v0

    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v5

    :goto_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;->getButtonHeight()I

    move-result v6

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;->getButtonHeight()I

    move-result v2

    add-int v9, v2, v3

    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v9

    move v9, v10

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->drawScrollPositionAlways:Z

    if-eqz v1, :cond_6

    neg-int v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->setMenuPosX(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iXPos:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iYPos:I

    add-int/2addr v1, p3

    iget v2, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iWidth:I

    iget v3, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iHeight:I

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public onHovered()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_Scenarios()V

    return-void
.end method
