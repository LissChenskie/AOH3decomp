.class public Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "NewGame_Settings.java"


# direct methods
.method public constructor <init>()V
    .locals 40

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v4, v2, 0x5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v3, v5

    add-int/2addr v3, v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    new-instance v15, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$1;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Fogofwar"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, -0x1

    mul-int/lit8 v7, v0, 0x2

    sub-int v18, v4, v7

    const/16 v16, 0x1

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/16 v19, 0x1

    move-object v7, v15

    move-object/from16 v8, p0

    move v12, v0

    move v13, v5

    move/from16 v14, v18

    move-object/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v19

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$1;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;Ljava/lang/String;IIIIIZIZ)V

    move-object/from16 v7, v20

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v17, v5, v7

    new-instance v15, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$2;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Difficulty"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, ": "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->NAME:[Ljava/lang/String;

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/16 v16, 0x1

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    move-object v7, v15

    move-object/from16 v8, p0

    move/from16 v13, v17

    move-object/from16 v21, v14

    move/from16 v14, v18

    move-object/from16 v22, v15

    move/from16 v15, v16

    move/from16 v16, v19

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$2;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;Ljava/lang/String;IIIIIZI)V

    move-object/from16 v7, v22

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v17, v17, v7

    new-instance v15, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$3;

    const-string v9, "<<"

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v18, v7

    div-int/lit8 v14, v7, 0x2

    const/16 v16, 0x1

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v15

    move/from16 v13, v17

    move-object/from16 v32, v15

    move/from16 v15, v16

    move/from16 v16, v19

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$3;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;Ljava/lang/String;IIIIIZI)V

    move-object/from16 v7, v32

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$4;

    const-string v24, ">>"

    const/16 v25, 0x1

    const/16 v26, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v8, v18, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v27, v8, v9

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v8, v18, v8

    div-int/lit8 v29, v8, 0x2

    const/16 v30, 0x1

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object/from16 v22, v7

    move-object/from16 v23, p0

    move/from16 v28, v17

    invoke-direct/range {v22 .. v31}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$4;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v19, v17, v7

    new-instance v15, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$5;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Scenario"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v14, v21

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Events"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x1

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/16 v20, 0x1

    move-object v7, v15

    move-object/from16 v8, p0

    move/from16 v13, v19

    move-object/from16 v33, v14

    move/from16 v14, v18

    move-object/from16 v34, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v20

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$5;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;Ljava/lang/String;IIIIIZIZ)V

    move-object/from16 v7, v34

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v19, v19, v7

    new-instance v15, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$6;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "CallAllies"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v14, v33

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getVassals()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x1

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v15

    move-object/from16 v8, p0

    move/from16 v13, v19

    move-object/from16 v35, v14

    move/from16 v14, v18

    move-object/from16 v36, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v20

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$6;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;Ljava/lang/String;IIIIIZIZ)V

    move-object/from16 v7, v36

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v19, v19, v7

    new-instance v15, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$7;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "AIAggressiveness"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v8, v35

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game;->aiAggressivnes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x1

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    move-object v7, v15

    move-object/from16 v8, p0

    move/from16 v13, v19

    move-object/from16 v37, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$7;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;Ljava/lang/String;IIIIIZI)V

    move-object/from16 v7, v37

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v19, v19, v7

    new-instance v15, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$8;

    const-string v9, "<<"

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v18, v7

    div-int/lit8 v14, v7, 0x2

    const/16 v16, 0x1

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v15

    move/from16 v13, v19

    move-object/from16 v38, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$8;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;Ljava/lang/String;IIIIIZI)V

    move-object/from16 v7, v38

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$9;

    const-string v10, ">>"

    const/4 v11, 0x1

    const/4 v12, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v8, v18, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v13, v8, v9

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v8, v18, v8

    div-int/lit8 v15, v8, 0x2

    const/16 v16, 0x1

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v8, v7

    move-object/from16 v9, p0

    move/from16 v14, v19

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$9;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v19, v19, v7

    new-instance v15, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$10;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "SpectatorMode"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, -0x1

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v15

    move-object/from16 v8, p0

    move v12, v0

    move/from16 v13, v19

    move/from16 v14, v18

    move-object/from16 v39, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v20

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$10;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;Ljava/lang/String;IIIIIZIZ)V

    move-object/from16 v7, v39

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v19, v19, v7

    new-instance v15, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$11;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Sandbox"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x1

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v15

    move-object/from16 v8, p0

    move/from16 v13, v19

    move-object v0, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v20

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings$11;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    add-int v0, v19, v0

    new-instance v5, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Settings"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v5

    move v10, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v7, v1

    mul-int/lit8 v1, v3, 0x2

    sub-int/2addr v7, v1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v5, v7

    move v7, v8

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method

.method public static getHover_Difficulty(I)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .locals 27

    move/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Difficulty"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Clear;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->NAME:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Clear;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->world:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Player"

    invoke-virtual {v7, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Bonuses"

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v13, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->MONTHLY_INCOME:[F

    aget v3, v3, v0

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "MonthlyIncome"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    cmpl-float v9, v3, v16

    const-string v17, "+"

    if-lez v9, :cond_0

    move-object/from16 v10, v17

    goto :goto_0

    :cond_0
    move-object v10, v6

    :goto_0
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v14, 0x64

    invoke-static {v3, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v13, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    if-nez v9, :cond_1

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    :goto_1
    move-object/from16 v18, v7

    goto :goto_2

    :cond_1
    if-lez v9, :cond_2

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_2
    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :goto_2
    move-object v7, v4

    move-object v9, v3

    move v3, v14

    move-object/from16 v14, v18

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->INCOME_PRODUCTION:[F

    aget v4, v4, v0

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "IncomeProduction"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v9, v4, v16

    if-lez v9, :cond_3

    move-object/from16 v10, v17

    goto :goto_3

    :cond_3
    move-object v10, v6

    :goto_3
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v13, 0x0

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/AI/Government/nSju/IlLkpaQxs;->PBDgpAFxeXv:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    if-nez v9, :cond_4

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    :goto_4
    move-object/from16 v19, v7

    goto :goto_5

    :cond_4
    if-lez v9, :cond_5

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_4

    :cond_5
    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_4

    :goto_5
    move-object v7, v14

    move-object v9, v4

    move-object v4, v13

    move-object/from16 v13, v18

    move-object v3, v14

    move-object/from16 v14, v19

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->LEGACY:[F

    aget v3, v3, v0

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v3, v7

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Legacy"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v10, v3, v16

    if-lez v10, :cond_6

    move-object/from16 v11, v17

    goto :goto_6

    :cond_6
    move-object v11, v6

    :goto_6
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0x64

    invoke-static {v3, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget v22, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v25, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    if-nez v10, :cond_7

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    :goto_7
    move-object/from16 v26, v3

    goto :goto_8

    :cond_7
    if-lez v10, :cond_8

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_7

    :cond_8
    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_7

    :goto_8
    move-object/from16 v19, v8

    invoke-direct/range {v19 .. v26}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->MANPOWER:[F

    aget v3, v3, v0

    mul-float/2addr v3, v7

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Manpower"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v10, v3, v16

    if-lez v10, :cond_9

    move-object/from16 v11, v17

    goto :goto_9

    :cond_9
    move-object v11, v6

    :goto_9
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0x64

    invoke-static {v3, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget v22, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v25, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    if-nez v10, :cond_a

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    :goto_a
    move-object/from16 v26, v3

    goto :goto_b

    :cond_a
    if-lez v10, :cond_b

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_a

    :cond_b
    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_a

    :goto_b
    move-object/from16 v19, v8

    invoke-direct/range {v19 .. v26}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->RECRUIT_ARMY_COST:[F

    aget v3, v3, v0

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "ArmyRecruitmentCost"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v10, v3, v16

    if-lez v10, :cond_c

    move-object/from16 v11, v17

    goto :goto_c

    :cond_c
    move-object v11, v6

    :goto_c
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0x64

    invoke-static {v3, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget v22, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v25, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    if-nez v10, :cond_d

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    :goto_d
    move-object/from16 v26, v3

    goto :goto_e

    :cond_d
    cmpg-float v3, v3, v16

    if-gez v3, :cond_e

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_d

    :cond_e
    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_d

    :goto_e
    move-object/from16 v19, v8

    invoke-direct/range {v19 .. v26}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->RECRUIT_ARMY_COST:[F

    aget v3, v3, v0

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "RecruitmentTime"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v10, v3, v16

    if-lez v10, :cond_f

    move-object/from16 v11, v17

    goto :goto_f

    :cond_f
    move-object v11, v6

    :goto_f
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0x64

    invoke-static {v3, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget v22, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v25, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    if-nez v10, :cond_10

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    :goto_10
    move-object/from16 v26, v3

    goto :goto_11

    :cond_10
    cmpg-float v3, v3, v16

    if-gez v3, :cond_11

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_10

    :cond_11
    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_10

    :goto_11
    move-object/from16 v19, v8

    invoke-direct/range {v19 .. v26}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->REGIMENTS_LIMIT:[I

    aget v3, v3, v0

    int-to-float v3, v3

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "RegimentsLimit"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v10, v3, v16

    if-lez v10, :cond_12

    move-object/from16 v11, v17

    goto :goto_12

    :cond_12
    move-object v11, v6

    :goto_12
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0x64

    invoke-static {v3, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget v22, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v25, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    if-nez v10, :cond_13

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    :goto_13
    move-object/from16 v26, v3

    goto :goto_14

    :cond_13
    if-lez v10, :cond_14

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_13

    :cond_14
    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_13

    :goto_14
    move-object/from16 v19, v8

    invoke-direct/range {v19 .. v26}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->CONSTRUCTION_COST:[F

    aget v3, v3, v0

    mul-float/2addr v3, v7

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v9, 0x0

    sget-object v9, Laoc/kingdoms/lukasz/map/advisors/VjN/hQfu;->SCTqr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v9, v3, v16

    if-lez v9, :cond_15

    move-object/from16 v10, v17

    goto :goto_15

    :cond_15
    move-object v10, v6

    :goto_15
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v10, 0x64

    invoke-static {v3, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    if-nez v9, :cond_16

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_16

    :cond_16
    cmpg-float v3, v3, v16

    if-gez v3, :cond_17

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_16

    :cond_17
    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_16
    move-object v7, v14

    move-object v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move-object/from16 v13, v19

    move-object/from16 v19, v6

    move-object v6, v14

    move-object v14, v3

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->CORE_COST:[F

    aget v3, v3, v0

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "CoreConstruction"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v8, v3, v16

    if-lez v8, :cond_18

    move-object/from16 v9, v17

    goto :goto_17

    :cond_18
    move-object/from16 v9, v19

    :goto_17
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0x64

    invoke-static {v3, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->core:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v13, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    if-nez v8, :cond_19

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_18

    :cond_19
    cmpg-float v3, v3, v16

    if-gez v3, :cond_1a

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_18

    :cond_1a
    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_18
    move-object v6, v14

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v3

    invoke-direct/range {v6 .. v13}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->RELIGION_COST:[F

    aget v3, v3, v0

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "ReligionConversionCost"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v8, v3, v16

    if-lez v8, :cond_1b

    move-object/from16 v9, v17

    goto :goto_19

    :cond_1b
    move-object/from16 v9, v19

    :goto_19
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0x64

    invoke-static {v3, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    if-nez v8, :cond_1c

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    :goto_1a
    move-object v13, v3

    goto :goto_1b

    :cond_1c
    cmpg-float v3, v3, v16

    if-gez v3, :cond_1d

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1a

    :cond_1d
    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1a

    :goto_1b
    move-object v6, v14

    move-object v8, v4

    invoke-direct/range {v6 .. v13}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getVassals()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "ProclaimIndependence"

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->CAN_VASSAL_PROCLAIM_INDEPENDENCE_AGAINST_PLAYER:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1e

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->v:I

    goto :goto_1c

    :cond_1e
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->x:I

    :goto_1c
    move v9, v4

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v13, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "FormACoalitionAgainst"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->NORMAL_ID:I

    if-le v0, v4, :cond_1f

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->v:I

    goto :goto_1d

    :cond_1f
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->x:I

    :goto_1d
    move v9, v0

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v13, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame_Settings;->getHeight()I

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
