.class public Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioBuildings_List.java"


# instance fields
.field public iProvinceID:I


# direct methods
.method public constructor <init>()V
    .locals 24

    move-object/from16 v11, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/4 v12, 0x0

    iput v12, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v1, 0x4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v16, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v18

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v1, :cond_0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    iput v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    iput v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    :goto_0
    iget v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    const/16 v19, 0x1

    if-ltz v1, :cond_5

    move v10, v12

    move/from16 v1, v17

    :goto_1
    :try_start_0
    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v10, v2, :cond_4

    move/from16 v20, v1

    move v9, v12

    :goto_2
    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v9, v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-nez v1, :cond_2

    iget v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredTechID:[I

    aget v1, v1, v9

    if-ltz v1, :cond_1

    iget v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredTechID:[I

    aget v2, v2, v9

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;

    iget v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v3

    mul-int/lit8 v1, v0, 0x2

    sub-int v21, v18, v1

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object v1, v8

    move-object/from16 v2, p0

    move v4, v10

    move v5, v9

    move v6, v0

    move/from16 v7, v20

    move-object v12, v8

    move/from16 v8, v21

    move/from16 v21, v9

    move/from16 v9, v22

    move/from16 v22, v10

    move/from16 v10, v23

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;ZIIIIIZZ)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int v1, v1, v17

    add-int v20, v20, v1

    goto :goto_3

    :cond_2
    move/from16 v21, v9

    move/from16 v22, v10

    :goto_3
    add-int/lit8 v9, v21, 0x1

    move/from16 v10, v22

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_3
    move/from16 v22, v10

    add-int/lit8 v10, v22, 0x1

    move/from16 v1, v20

    const/4 v12, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move/from16 v17, v20

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_5

    :catch_1
    move-exception v0

    move/from16 v17, v1

    :goto_4
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_5
    move/from16 v0, v17

    :goto_5
    new-instance v7, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const-string v2, ""

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v7

    move v4, v14

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v4, v14, v16

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v14

    mul-int/lit8 v16, v16, 0x2

    sub-int v1, v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v0, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    if-ltz v0, :cond_6

    move/from16 v8, v19

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v15

    move/from16 v5, v18

    move-object v7, v13

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public final drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .locals 7

    add-int v2, p2, p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result p2

    sub-int p2, p3, p2

    add-int/2addr p2, p7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object p6

    invoke-virtual {p6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result p6

    add-int/2addr p6, p5

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p6, v0

    invoke-static {p1, v2, p2, p4, p6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->mainBox:I

    add-int v3, p3, p7

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, p5, p2

    const/4 v6, 0x1

    move-object v0, p1

    move v4, p4

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    return-void
.end method

.method public updateLanguage()V
    .locals 3

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v1, :cond_0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "None"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
