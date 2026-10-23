.class public Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioArmies_List.java"


# direct methods
.method public constructor <init>()V
    .locals 48

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x6

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v7

    if-eqz v7, :cond_0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_0

    :cond_0
    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_0
    mul-int/lit8 v7, v0, 0x2

    sub-int v16, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$1;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Clear"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v11, -0x1

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v14

    move-object/from16 v8, p0

    move v12, v0

    move v13, v5

    move-object/from16 v18, v14

    move/from16 v14, v16

    move/from16 v19, v2

    move v2, v15

    move/from16 v15, v17

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;Ljava/lang/String;IIIIII)V

    move-object/from16 v7, v18

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    invoke-static {v5, v4, v2}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleFirstLine(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v15

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    add-int/2addr v5, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    const/4 v14, 0x0

    if-ltz v7, :cond_1

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    move/from16 v17, v7

    goto :goto_1

    :cond_1
    move/from16 v17, v14

    :goto_1
    move v7, v14

    move v13, v7

    :goto_2
    sget v8, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    if-ge v13, v8, :cond_4

    move v12, v14

    :goto_3
    sget-object v8, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmySize:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v12, v8, :cond_3

    sget-object v8, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-nez v8, :cond_2

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v13, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isUnitBest(II)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v18, v7, 0x1

    new-instance v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v20, v16, v7

    const/16 v21, 0x1

    move-object v7, v11

    move-object/from16 v8, p0

    move v9, v13

    move v10, v12

    move-object v15, v11

    move v11, v0

    move/from16 v33, v12

    move v12, v5

    move/from16 v34, v13

    move/from16 v13, v20

    move/from16 v14, v21

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIIIIZ)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$3;

    const/16 v24, 0x1

    const-string v25, "+"

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v27, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v8, v16, v8

    add-int/2addr v8, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v28, v8, v9

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v30, v8, v9

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v8, v9

    div-int/lit8 v31, v8, 0x2

    const/16 v32, 0x1

    move-object/from16 v20, v7

    move-object/from16 v21, p0

    move/from16 v22, v34

    move/from16 v23, v33

    move/from16 v29, v5

    invoke-direct/range {v20 .. v32}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$3;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$4;

    const/16 v24, 0x0

    const-string v25, "-"

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v8, v16, v8

    add-int/2addr v8, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v28, v8, v9

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v29, v8, v9

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v30, v8, v9

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v8, v9

    div-int/lit8 v31, v8, 0x2

    move-object/from16 v20, v7

    invoke-direct/range {v20 .. v32}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$4;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    add-int/2addr v5, v7

    move/from16 v7, v18

    goto :goto_4

    :cond_2
    move/from16 v33, v12

    move/from16 v34, v13

    :goto_4
    add-int/lit8 v12, v33, 0x1

    move/from16 v13, v34

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_3

    :cond_3
    move/from16 v34, v13

    add-int/lit8 v13, v34, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_4
    const-string v15, "None"

    if-nez v7, :cond_5

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v10, -0x1

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v14

    move v11, v0

    move v12, v5

    move/from16 v13, v16

    move/from16 v20, v3

    move-object v3, v14

    move/from16 v14, v18

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v5, v3

    goto :goto_5

    :cond_5
    move/from16 v20, v3

    :goto_5
    invoke-static {v5, v4, v2}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleFirstLineSide(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v5, v3

    const/4 v3, 0x0

    const/4 v14, 0x0

    :goto_6
    sget v7, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    if-ge v3, v7, :cond_8

    move v7, v14

    const/4 v14, 0x0

    :goto_7
    sget-object v8, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmySize:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v14, v8, :cond_7

    sget-object v8, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v3, v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isUnitBest(II)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v18, v7, 0x1

    new-instance v13, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$5;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v21, v16, v7

    const/16 v22, 0x1

    move-object v7, v13

    move-object/from16 v8, p0

    move v9, v3

    move v10, v14

    move v11, v0

    move v12, v5

    move/from16 v23, v2

    move-object v2, v13

    move/from16 v13, v21

    move/from16 v21, v14

    move/from16 v14, v22

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$5;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$6;

    const/16 v39, 0x1

    const-string v40, "+"

    sget v41, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v42, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v7, v16, v7

    add-int/2addr v7, v0

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v43, v7, v8

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v45, v7, v8

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v7, v8

    div-int/lit8 v46, v7, 0x2

    const/16 v47, 0x1

    move-object/from16 v35, v2

    move-object/from16 v36, p0

    move/from16 v37, v3

    move/from16 v38, v21

    move/from16 v44, v5

    invoke-direct/range {v35 .. v47}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$6;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$7;

    const/16 v39, 0x0

    const-string v40, "-"

    sget v41, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v7, v16, v7

    add-int/2addr v7, v0

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v43, v7, v8

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v5

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v44, v7, v8

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v45, v7, v8

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v7, v8

    div-int/lit8 v46, v7, 0x2

    move-object/from16 v35, v2

    invoke-direct/range {v35 .. v47}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$7;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v5, v2

    move/from16 v7, v18

    goto :goto_8

    :cond_6
    move/from16 v23, v2

    move/from16 v21, v14

    :goto_8
    add-int/lit8 v14, v21, 0x1

    move/from16 v2, v23

    goto/16 :goto_7

    :cond_7
    move/from16 v23, v2

    add-int/lit8 v3, v3, 0x1

    move v14, v7

    goto/16 :goto_6

    :cond_8
    move/from16 v23, v2

    if-nez v14, :cond_9

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v10, -0x1

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v2

    move v11, v0

    move v12, v5

    move/from16 v13, v16

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v5, v2

    :cond_9
    move/from16 v2, v23

    invoke-static {v5, v4, v2}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleSecondLine(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v5, v2

    const/4 v2, 0x0

    const/4 v14, 0x0

    :goto_9
    sget v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    if-ge v2, v3, :cond_c

    const/4 v3, 0x0

    :goto_a
    sget-object v7, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmySize:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v3, v7, :cond_b

    sget-object v7, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_a

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isUnitBest(II)Z

    move-result v7

    if-eqz v7, :cond_a

    add-int/lit8 v18, v14, 0x1

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$8;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v13, v16, v7

    const/16 v21, 0x1

    move-object v7, v14

    move-object/from16 v8, p0

    move v9, v2

    move v10, v3

    move v11, v0

    move v12, v5

    move/from16 v22, v4

    move-object v4, v14

    move/from16 v14, v21

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$8;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIIIIZ)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$9;

    const/16 v39, 0x1

    const-string v40, "+"

    sget v41, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v42, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v7, v16, v7

    add-int/2addr v7, v0

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v43, v7, v8

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v45, v7, v8

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v7, v8

    div-int/lit8 v46, v7, 0x2

    const/16 v47, 0x1

    move-object/from16 v35, v4

    move-object/from16 v36, p0

    move/from16 v37, v2

    move/from16 v38, v3

    move/from16 v44, v5

    invoke-direct/range {v35 .. v47}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$9;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$10;

    const/16 v39, 0x0

    const-string v40, "-"

    sget v41, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v7, v16, v7

    add-int/2addr v7, v0

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v43, v7, v8

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v5

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v44, v7, v8

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v45, v7, v8

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v7, v8

    div-int/lit8 v46, v7, 0x2

    move-object/from16 v35, v4

    invoke-direct/range {v35 .. v47}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$10;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v5, v4

    move/from16 v14, v18

    goto :goto_b

    :cond_a
    move/from16 v22, v4

    :goto_b
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v22

    goto/16 :goto_a

    :cond_b
    move/from16 v22, v4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    :cond_c
    move/from16 v22, v4

    if-nez v14, :cond_d

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v10, -0x1

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v1

    move v11, v0

    move v12, v5

    move/from16 v13, v16

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    :cond_d
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v20

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v4, v22

    const/4 v9, 0x0

    invoke-direct {v0, v9, v9, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;

    const-string v0, ""

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-direct {v1, v0, v9, v9, v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    const/4 v8, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v19

    move/from16 v3, v20

    move v5, v7

    move v7, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->drawScrollPositionAlways:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public getVisible()Z
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateLanguage()V
    .locals 3

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v1, :cond_0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "LandUnits"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
