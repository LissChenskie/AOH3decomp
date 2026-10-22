.class public Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Court_WorldCivs.java"


# static fields
.field public static iSortID:I = 0x2

.field public static sSearch:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 50

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v3, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuWidth()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v5, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$1;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->COUNCIL_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->council:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v19, v4, v7

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->council:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x4

    mul-int/2addr v8, v13

    add-int v16, v7, v8

    const/16 v18, 0x1

    move-object v7, v15

    move-object/from16 v8, p0

    move v11, v0

    move/from16 v12, v17

    move/from16 v13, v19

    move-object v2, v15

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int v17, v17, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$2;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Search"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x2

    mul-int/lit8 v11, v7, 0x2

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v2

    move-object/from16 v8, p0

    move v12, v0

    move/from16 v13, v17

    move/from16 v14, v19

    move/from16 v22, v3

    move v3, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int v17, v17, v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_0

    :cond_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_0
    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x6

    mul-int/2addr v7, v15

    sub-int v7, v19, v7

    const/4 v14, 0x7

    div-int/lit8 v34, v7, 0x7

    sget v35, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v2

    add-int v13, v7, v35

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    sub-int v7, v4, v7

    int-to-float v7, v7

    const/high16 v8, 0x40a00000    # 5.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$3;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    if-eqz v10, :cond_2

    if-ne v10, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v25, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v25, v3

    :goto_2
    if-ne v10, v3, :cond_3

    move/from16 v26, v3

    goto :goto_3

    :cond_3
    const/16 v26, 0x0

    :goto_3
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Name"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, -0x1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v11, v15

    add-int v32, v10, v11

    sget v33, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v23, v9

    move-object/from16 v24, p0

    move/from16 v29, v8

    move/from16 v30, v17

    move/from16 v31, v7

    invoke-direct/range {v23 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$4;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v10, v12, :cond_5

    if-ne v10, v11, :cond_4

    goto :goto_4

    :cond_4
    const/16 v25, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    move/from16 v25, v3

    :goto_5
    if-ne v10, v11, :cond_6

    move/from16 v26, v3

    goto :goto_6

    :cond_6
    const/16 v26, 0x0

    :goto_6
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Population"

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, -0x1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v12, v15

    add-int v32, v10, v12

    sget v33, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v23, v9

    move-object/from16 v24, p0

    move/from16 v29, v8

    move/from16 v30, v17

    move/from16 v31, v7

    invoke-direct/range {v23 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$5;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/4 v12, 0x5

    const/4 v11, 0x4

    if-eq v10, v11, :cond_8

    if-ne v10, v12, :cond_7

    goto :goto_7

    :cond_7
    const/16 v25, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    move/from16 v25, v3

    :goto_8
    if-ne v10, v12, :cond_9

    move/from16 v26, v3

    goto :goto_9

    :cond_9
    const/16 v26, 0x0

    :goto_9
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Provinces"

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, -0x1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v12, v15

    add-int v32, v10, v12

    sget v33, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v23, v9

    move-object/from16 v24, p0

    move/from16 v29, v8

    move/from16 v30, v17

    move/from16 v31, v7

    invoke-direct/range {v23 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$6;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    if-eq v10, v15, :cond_b

    if-ne v10, v14, :cond_a

    goto :goto_a

    :cond_a
    const/16 v25, 0x0

    goto :goto_b

    :cond_b
    :goto_a
    move/from16 v25, v3

    :goto_b
    if-ne v10, v14, :cond_c

    move/from16 v26, v3

    goto :goto_c

    :cond_c
    const/16 v26, 0x0

    :goto_c
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Economy"

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, -0x1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v12, v15

    add-int v32, v10, v12

    sget v33, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v23, v9

    move-object/from16 v24, p0

    move/from16 v29, v8

    move/from16 v30, v17

    move/from16 v31, v7

    invoke-direct/range {v23 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    add-int v29, v8, v9

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$7;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/16 v12, 0x8

    const/16 v10, 0x9

    if-eq v9, v12, :cond_e

    if-ne v9, v10, :cond_d

    goto :goto_d

    :cond_d
    const/16 v25, 0x0

    goto :goto_e

    :cond_e
    :goto_d
    move/from16 v25, v3

    :goto_e
    if-ne v9, v10, :cond_f

    move/from16 v26, v3

    goto :goto_f

    :cond_f
    const/16 v26, 0x0

    :goto_f
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Technologies"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, -0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v10, v15

    add-int v32, v9, v10

    sget v33, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v23, v8

    move-object/from16 v24, p0

    move/from16 v30, v17

    move/from16 v31, v7

    invoke-direct/range {v23 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int v17, v17, v7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v23, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->sSearch:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_12

    :try_start_0
    sget-object v23, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->sSearch:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    :catch_0
    const/16 v23, -0x1

    :goto_10
    move/from16 v12, v23

    if-ltz v12, :cond_10

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v14

    if-ge v12, v14, :cond_10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :cond_10
    sget-object v12, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    :goto_11
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v15

    if-ge v14, v15, :cond_13

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    :cond_12
    move v15, v3

    :goto_12
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v12

    if-ge v15, v12, :cond_13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    :cond_13
    :goto_13
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_2b

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->COURT_PROVINCES_LIMIT:I

    const/4 v14, 0x2

    mul-int/lit8 v15, v12, 0x2

    move/from16 v26, v17

    const/4 v12, 0x0

    :goto_14
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_2a

    add-int/lit8 v31, v12, 0x1

    if-ge v12, v15, :cond_2a

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    if-nez v12, :cond_16

    move v12, v3

    const/4 v14, 0x0

    :goto_15
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v12, v11, :cond_15

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v14, v12

    :cond_14
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x1

    goto :goto_15

    :cond_15
    move v3, v14

    goto/16 :goto_1f

    :cond_16
    if-ne v12, v3, :cond_18

    const/4 v3, 0x1

    const/4 v14, 0x0

    :goto_16
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_15

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    move v14, v3

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_18
    const/4 v3, 0x2

    if-ne v12, v3, :cond_1a

    const/4 v3, 0x1

    const/4 v14, 0x0

    :goto_17
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_15

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    cmp-long v11, v11, v28

    if-lez v11, :cond_19

    move v14, v3

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_1a
    const/4 v3, 0x3

    if-ne v12, v3, :cond_1c

    const/4 v11, 0x1

    const/4 v14, 0x0

    :goto_18
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_15

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    cmp-long v12, v17, v28

    if-gez v12, :cond_1b

    move v14, v11

    :cond_1b
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    :cond_1c
    const/4 v11, 0x4

    if-ne v12, v11, :cond_1e

    const/4 v12, 0x1

    const/4 v14, 0x0

    :goto_19
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_15

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v11

    if-le v3, v11, :cond_1d

    move v14, v12

    :cond_1d
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x4

    goto :goto_19

    :cond_1e
    const/4 v3, 0x5

    if-ne v12, v3, :cond_20

    const/4 v11, 0x1

    const/4 v14, 0x0

    :goto_1a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_15

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v12

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v12, v3, :cond_1f

    move v14, v11

    :cond_1f
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x5

    goto :goto_1a

    :cond_20
    const/4 v3, 0x6

    if-ne v12, v3, :cond_22

    const/4 v11, 0x1

    const/4 v14, 0x0

    :goto_1b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_15

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    cmpl-float v12, v12, v17

    if-lez v12, :cond_21

    move v14, v11

    :cond_21
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b

    :cond_22
    const/4 v14, 0x7

    if-ne v12, v14, :cond_25

    const/4 v11, 0x0

    const/4 v12, 0x1

    :goto_1c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_24

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    cmpg-float v3, v3, v17

    if-gez v3, :cond_23

    move v11, v12

    :cond_23
    add-int/lit8 v12, v12, 0x1

    goto :goto_1c

    :cond_24
    move v3, v11

    goto :goto_1f

    :cond_25
    const/16 v3, 0x8

    if-ne v12, v3, :cond_27

    const/4 v11, 0x0

    const/4 v12, 0x1

    :goto_1d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_24

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-le v3, v14, :cond_26

    move v11, v12

    :cond_26
    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x7

    goto :goto_1d

    :cond_27
    const/16 v3, 0x9

    if-ne v12, v3, :cond_29

    const/4 v11, 0x1

    const/4 v14, 0x0

    :goto_1e
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_15

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v12, v3, :cond_28

    move v14, v11

    :cond_28
    add-int/lit8 v11, v11, 0x1

    const/16 v3, 0x9

    goto :goto_1e

    :cond_29
    const/4 v3, 0x0

    :goto_1f
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v28

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$8;

    invoke-static/range {v28 .. v28}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v21, 0x2

    mul-int/lit8 v17, v17, 0x2

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->population:I

    move-object/from16 v30, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move/from16 v33, v5

    const-string v5, ""

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v37, v8

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v8, v30

    move-object v7, v14

    move/from16 v39, v4

    move-object/from16 v4, v37

    move/from16 v37, v1

    move-object v1, v8

    move-object/from16 v8, p0

    move-object/from16 v40, v9

    move-object v9, v11

    move-object v11, v10

    const/16 v36, 0x9

    move v10, v12

    move-object v12, v11

    const/16 v41, 0x3

    const/16 v42, 0x4

    move/from16 v11, v17

    move-object/from16 v43, v12

    const/16 v20, 0x8

    const/16 v44, 0x5

    move v12, v0

    move/from16 v45, v13

    move/from16 v13, v26

    move-object/from16 v46, v1

    move-object v1, v14

    const/16 v47, 0x7

    move/from16 v14, v19

    move/from16 v48, v15

    const/16 v49, 0x6

    move v15, v2

    move/from16 v16, v28

    move/from16 v17, v29

    move-object/from16 v18, v38

    invoke-direct/range {v7 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;Ljava/lang/String;IIIIIIIILjava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v26, v1

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$9;

    invoke-static/range {v28 .. v28}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v9

    mul-int/lit8 v15, v34, 0x2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v15, v7

    move-object v7, v14

    move v10, v0

    move v11, v1

    move/from16 v13, v35

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;IIIII)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int v14, v0, v7

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$10;

    invoke-static/range {v28 .. v28}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v9

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v15, v7

    move-object v7, v13

    move-object/from16 v8, p0

    move v10, v14

    move-object v15, v13

    move/from16 v13, v35

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;IIIII)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int/2addr v14, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$11;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v28 .. v28}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    move-object/from16 v23, v7

    move-object/from16 v24, p0

    move/from16 v27, v14

    move/from16 v28, v1

    move/from16 v29, v34

    move/from16 v30, v35

    invoke-direct/range {v23 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int/2addr v14, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$12;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    move-object/from16 v23, v7

    move/from16 v27, v14

    invoke-direct/range {v23 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int v27, v14, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$13;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, v46

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    move-object/from16 v23, v7

    invoke-direct/range {v23 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    move/from16 v8, v45

    sub-int v9, v1, v8

    mul-int/lit8 v10, v37, 0x2

    sub-int v10, v39, v10

    move/from16 v11, v37

    invoke-direct {v7, v11, v9, v10, v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v26, v1, v7

    move-object/from16 v1, v43

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v7, v40

    invoke-interface {v7, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v10, v1

    move-object v9, v7

    move v13, v8

    move v1, v11

    move/from16 v12, v31

    move/from16 v11, v42

    move/from16 v15, v48

    const/4 v3, 0x1

    move-object v8, v4

    move-object v7, v5

    move/from16 v5, v33

    move/from16 v4, v39

    goto/16 :goto_14

    :cond_2a
    move/from16 v39, v4

    move/from16 v33, v5

    const/16 v41, 0x3

    goto :goto_20

    :cond_2b
    move/from16 v39, v4

    move/from16 v33, v5

    const/16 v41, 0x3

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "None"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v10, -0x1

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v1

    move v11, v0

    move/from16 v12, v17

    move/from16 v13, v19

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

    add-int v26, v17, v0

    :goto_20
    move/from16 v0, v26

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int v3, v33, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v4, v39

    const/4 v9, 0x0

    invoke-direct {v1, v9, v9, v4, v0}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v22

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->drawScrollPositionAlways:Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Civilizations"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setInGame_CivOptions_Title(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v2, v0

    goto :goto_0

    :cond_0
    move/from16 v2, p2

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getPosY()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    const/4 v10, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    move-object v5, p1

    invoke-static/range {v5 .. v12}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v7, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public onHovered()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameCourt()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime2:J

    if-nez p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    :cond_0
    return-void
.end method
