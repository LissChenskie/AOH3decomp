.class public Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Court_WorldSearch.java"


# static fields
.field public static iSortID:I = 0x2

.field public static sSearch:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 55

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

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$1;

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

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;Ljava/lang/String;IIIIIIZ)V

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

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$2;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Search"

    invoke-virtual {v8, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

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

    move-object/from16 v22, v14

    move/from16 v14, v19

    move/from16 v23, v3

    move v3, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;Ljava/lang/String;IIIIII)V

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

    div-int/lit8 v35, v7, 0x7

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v2

    add-int v13, v7, v36

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    sub-int v7, v4, v7

    int-to-float v7, v7

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v7, v9

    float-to-int v7, v7

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v9, v8

    sub-int v8, v4, v9

    int-to-float v8, v8

    const/high16 v9, 0x40a00000    # 5.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$3;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-eqz v11, :cond_2

    if-ne v11, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v26, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v26, v3

    :goto_2
    if-ne v11, v3, :cond_3

    move/from16 v27, v3

    goto :goto_3

    :cond_3
    const/16 v27, 0x0

    :goto_3
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Name"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, -0x1

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v12, v15

    add-int v33, v11, v12

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v24, v10

    move-object/from16 v25, p0

    move/from16 v30, v9

    move/from16 v31, v17

    move/from16 v32, v7

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$4;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/4 v12, 0x3

    const/4 v14, 0x2

    if-eq v11, v14, :cond_5

    if-ne v11, v12, :cond_4

    goto :goto_4

    :cond_4
    const/16 v26, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    move/from16 v26, v3

    :goto_5
    if-ne v11, v12, :cond_6

    move/from16 v27, v3

    goto :goto_6

    :cond_6
    const/16 v27, 0x0

    :goto_6
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Population"

    invoke-virtual {v11, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, -0x1

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v14, v15

    add-int v33, v11, v14

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v24, v10

    move-object/from16 v25, p0

    move/from16 v30, v9

    move/from16 v31, v17

    move/from16 v32, v7

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$5;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/4 v14, 0x5

    const/4 v12, 0x4

    if-eq v11, v12, :cond_8

    if-ne v11, v14, :cond_7

    goto :goto_7

    :cond_7
    const/16 v26, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    move/from16 v26, v3

    :goto_8
    if-ne v11, v14, :cond_9

    move/from16 v27, v3

    goto :goto_9

    :cond_9
    const/16 v27, 0x0

    :goto_9
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Income"

    invoke-virtual {v11, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, -0x1

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v14, v15

    add-int v33, v11, v14

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v24, v10

    move-object/from16 v25, p0

    move/from16 v30, v9

    move/from16 v31, v17

    move/from16 v32, v7

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v10

    add-int v30, v9, v10

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$6;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/4 v11, 0x7

    if-eq v10, v15, :cond_b

    if-ne v10, v11, :cond_a

    goto :goto_a

    :cond_a
    const/16 v26, 0x0

    goto :goto_b

    :cond_b
    :goto_a
    move/from16 v26, v3

    :goto_b
    if-ne v10, v11, :cond_c

    move/from16 v27, v3

    goto :goto_c

    :cond_c
    const/16 v27, 0x0

    :goto_c
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "TaxEfficiency"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, -0x1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v11, v15

    add-int v33, v10, v11

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v24, v9

    move-object/from16 v25, p0

    move/from16 v31, v17

    move/from16 v32, v7

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    add-int v17, v17, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$7;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v14, 0x8

    const/16 v11, 0x9

    if-eq v10, v14, :cond_e

    if-ne v10, v11, :cond_d

    goto :goto_d

    :cond_d
    const/16 v26, 0x0

    goto :goto_e

    :cond_e
    :goto_d
    move/from16 v26, v3

    :goto_e
    if-ne v10, v11, :cond_f

    move/from16 v27, v3

    goto :goto_f

    :cond_f
    const/16 v27, 0x0

    :goto_f
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "GrowthRate"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, -0x1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v11, v15

    add-int v33, v10, v11

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v24, v9

    move-object/from16 v25, p0

    move/from16 v30, v7

    move/from16 v31, v17

    move/from16 v32, v8

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    add-int/2addr v7, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$8;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v11, 0xb

    const/16 v14, 0xa

    if-eq v10, v14, :cond_11

    if-ne v10, v11, :cond_10

    goto :goto_10

    :cond_10
    const/16 v26, 0x0

    goto :goto_11

    :cond_11
    :goto_10
    move/from16 v26, v3

    :goto_11
    if-ne v10, v11, :cond_12

    move/from16 v27, v3

    goto :goto_12

    :cond_12
    const/16 v27, 0x0

    :goto_12
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Manpower"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, -0x1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v11, v15

    add-int v33, v10, v11

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v24, v9

    move-object/from16 v25, p0

    move/from16 v30, v7

    move/from16 v31, v17

    move/from16 v32, v8

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    add-int/2addr v7, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$9;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v11, 0xc

    const/16 v14, 0xd

    if-eq v10, v11, :cond_14

    if-ne v10, v14, :cond_13

    goto :goto_13

    :cond_13
    const/16 v26, 0x0

    goto :goto_14

    :cond_14
    :goto_13
    move/from16 v26, v3

    :goto_14
    if-ne v10, v14, :cond_15

    move/from16 v27, v3

    goto :goto_15

    :cond_15
    const/16 v27, 0x0

    :goto_15
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Infrastructure"

    invoke-virtual {v10, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, -0x1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v14, v15

    add-int v33, v10, v14

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v24, v9

    move-object/from16 v25, p0

    move/from16 v30, v7

    move/from16 v31, v17

    move/from16 v32, v8

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    add-int/2addr v7, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$10;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v14, 0xe

    const/16 v11, 0xf

    if-eq v10, v14, :cond_17

    if-ne v10, v11, :cond_16

    goto :goto_16

    :cond_16
    const/16 v26, 0x0

    goto :goto_17

    :cond_17
    :goto_16
    move/from16 v26, v3

    :goto_17
    if-ne v10, v11, :cond_18

    move/from16 v27, v3

    goto :goto_18

    :cond_18
    const/16 v27, 0x0

    :goto_18
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Economy"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, -0x1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v11, v15

    add-int v33, v10, v11

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v24, v9

    move-object/from16 v25, p0

    move/from16 v30, v7

    move/from16 v31, v17

    move/from16 v32, v8

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    add-int v30, v7, v9

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$11;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v11, 0x10

    const/16 v10, 0x11

    if-eq v9, v11, :cond_1a

    if-ne v9, v10, :cond_19

    goto :goto_19

    :cond_19
    const/16 v26, 0x0

    goto :goto_1a

    :cond_1a
    :goto_19
    move/from16 v26, v3

    :goto_1a
    if-ne v9, v10, :cond_1b

    move/from16 v27, v3

    goto :goto_1b

    :cond_1b
    const/16 v27, 0x0

    :goto_1b
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Resource"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, -0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v10, v15

    add-int v33, v9, v10

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v24, v7

    move-object/from16 v25, p0

    move/from16 v31, v17

    move/from16 v32, v8

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

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

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->sSearch:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1e

    :try_start_0
    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->sSearch:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1c

    :catch_0
    const/4 v7, -0x1

    :goto_1c
    if-ltz v7, :cond_1c

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v8

    if-ge v7, v8, :cond_1c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_1c
    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->sSearch:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    :goto_1d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v9

    if-ge v8, v9, :cond_1f

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_1d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_1e
    const/4 v7, 0x0

    :goto_1e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v8

    if-ge v7, v8, :cond_1f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_1f
    :goto_1f
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_47

    move/from16 v24, v17

    const/4 v7, 0x0

    :goto_20
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_46

    add-int/lit8 v33, v7, 0x1

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->COURT_PROVINCES_LIMIT:I

    if-ge v7, v8, :cond_46

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-nez v7, :cond_22

    move v7, v3

    const/4 v8, 0x0

    :goto_21
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_21

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    move v8, v7

    :cond_20
    add-int/lit8 v7, v7, 0x1

    const/16 v11, 0x10

    goto :goto_21

    :cond_21
    move v11, v8

    const/4 v12, 0x7

    goto/16 :goto_33

    :cond_22
    if-ne v7, v3, :cond_24

    move v7, v3

    const/4 v8, 0x0

    :goto_22
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_21

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_23

    move v8, v7

    :cond_23
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    :cond_24
    const/4 v8, 0x2

    if-ne v7, v8, :cond_26

    move v7, v3

    const/4 v8, 0x0

    :goto_23
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_21

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v11

    if-le v9, v11, :cond_25

    move v8, v7

    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    :cond_26
    const/4 v11, 0x3

    if-ne v7, v11, :cond_28

    move v7, v3

    const/4 v8, 0x0

    :goto_24
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_21

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v11

    if-ge v9, v11, :cond_27

    move v8, v7

    :cond_27
    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x3

    goto :goto_24

    :cond_28
    if-ne v7, v12, :cond_2a

    move v7, v3

    const/4 v8, 0x0

    :goto_25
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_21

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v9

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v9, v11

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v11

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v11, v12

    cmpl-float v9, v9, v11

    if-lez v9, :cond_29

    move v8, v7

    :cond_29
    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x4

    goto :goto_25

    :cond_2a
    const/4 v12, 0x5

    if-ne v7, v12, :cond_2c

    move v7, v3

    const/4 v8, 0x0

    :goto_26
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_21

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v9

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v9, v11

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v11

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v11, v12

    cmpg-float v9, v9, v11

    if-gez v9, :cond_2b

    move v8, v7

    :cond_2b
    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x5

    goto :goto_26

    :cond_2c
    if-ne v7, v15, :cond_2e

    move v7, v3

    const/4 v8, 0x0

    :goto_27
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_21

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v11

    cmpl-float v9, v9, v11

    if-lez v9, :cond_2d

    move v8, v7

    :cond_2d
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_2e
    const/4 v12, 0x7

    if-ne v7, v12, :cond_31

    move v7, v3

    const/4 v8, 0x0

    :goto_28
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_30

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v11

    cmpg-float v9, v9, v11

    if-gez v9, :cond_2f

    move v8, v7

    :cond_2f
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_30
    move v11, v8

    goto/16 :goto_33

    :cond_31
    const/16 v11, 0x8

    if-ne v7, v11, :cond_33

    move v7, v3

    const/4 v8, 0x0

    :goto_29
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_30

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v17

    cmpl-float v9, v9, v17

    if-lez v9, :cond_32

    move v8, v7

    :cond_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_33
    const/16 v9, 0x9

    if-ne v7, v9, :cond_35

    move v7, v3

    const/4 v8, 0x0

    :goto_2a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_30

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v17

    cmpg-float v9, v9, v17

    if-gez v9, :cond_34

    move v8, v7

    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_35
    const/16 v9, 0xa

    if-ne v7, v9, :cond_37

    move v7, v3

    const/4 v8, 0x0

    :goto_2b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_30

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v17

    cmpl-float v9, v9, v17

    if-lez v9, :cond_36

    move v8, v7

    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_37
    const/16 v9, 0xb

    if-ne v7, v9, :cond_39

    move v7, v3

    const/4 v8, 0x0

    :goto_2c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_30

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v17

    cmpg-float v9, v9, v17

    if-gez v9, :cond_38

    move v8, v7

    :cond_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_39
    const/16 v9, 0xc

    if-ne v7, v9, :cond_3b

    move v7, v3

    const/4 v8, 0x0

    :goto_2d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_30

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v11

    if-le v9, v11, :cond_3a

    move v8, v7

    :cond_3a
    add-int/lit8 v7, v7, 0x1

    const/16 v11, 0x8

    goto :goto_2d

    :cond_3b
    const/16 v11, 0xd

    if-ne v7, v11, :cond_3d

    move v7, v3

    const/4 v8, 0x0

    :goto_2e
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_30

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v11

    if-ge v9, v11, :cond_3c

    move v8, v7

    :cond_3c
    add-int/lit8 v7, v7, 0x1

    const/16 v11, 0xd

    goto :goto_2e

    :cond_3d
    if-ne v7, v14, :cond_3f

    move v7, v3

    const/4 v8, 0x0

    :goto_2f
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_30

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v11

    cmpl-float v9, v9, v11

    if-lez v9, :cond_3e

    move v8, v7

    :cond_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_3f
    const/16 v11, 0xf

    if-ne v7, v11, :cond_41

    move v7, v3

    const/4 v8, 0x0

    :goto_30
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_30

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v17

    cmpg-float v9, v9, v17

    if-gez v9, :cond_40

    move v8, v7

    :cond_40
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_41
    const/16 v9, 0x10

    if-ne v7, v9, :cond_43

    move v7, v3

    const/4 v8, 0x0

    :goto_31
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_30

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_42

    move v8, v7

    :cond_42
    add-int/lit8 v7, v7, 0x1

    const/16 v11, 0xf

    goto :goto_31

    :cond_43
    const/16 v11, 0x11

    if-ne v7, v11, :cond_45

    move v7, v3

    const/4 v8, 0x0

    :goto_32
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_30

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_44

    move v8, v7

    :cond_44
    add-int/lit8 v7, v7, 0x1

    const/16 v11, 0x11

    goto :goto_32

    :cond_45
    const/4 v11, 0x0

    :goto_33
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v34

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$12;

    invoke-static/range {v34 .. v34}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v21, 0x2

    mul-int/lit8 v27, v7, 0x2

    sget v28, Laoc/kingdoms/lukasz/textures/Images;->population:I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v34 .. v34}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object v7, v9

    move-object v12, v8

    move-object/from16 v8, p0

    move-object v3, v9

    const/16 v25, 0x10

    const/16 v31, 0xc

    const/16 v32, 0xb

    const/16 v38, 0x9

    const/16 v40, 0xa

    move-object/from16 v9, v17

    move/from16 v41, v5

    move-object v5, v10

    const/16 v43, 0x11

    move/from16 v10, v18

    move/from16 v46, v11

    move/from16 v37, v25

    move/from16 v42, v32

    move/from16 v44, v38

    const/16 v17, 0x8

    const/16 v18, 0xd

    const/16 v25, 0x3

    const/16 v39, 0xf

    move/from16 v38, v31

    move/from16 v11, v27

    move-object/from16 v45, v5

    move-object v5, v12

    move/from16 v20, v25

    const/16 v16, 0x5

    const/16 v25, 0x7

    const/16 v47, 0x4

    move v12, v0

    move/from16 v48, v4

    move v4, v13

    move/from16 v13, v24

    move/from16 v53, v1

    move/from16 v51, v16

    move/from16 v49, v17

    move/from16 v50, v18

    move/from16 v52, v25

    move/from16 v1, v40

    move/from16 v40, v14

    move/from16 v14, v19

    move/from16 v54, v15

    move v15, v2

    move/from16 v16, v34

    move/from16 v17, v28

    move-object/from16 v18, v29

    invoke-direct/range {v7 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;Ljava/lang/String;IIIIIIIILjava/lang/String;)V

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

    add-int v3, v24, v3

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$13;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v34 .. v34}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v8

    invoke-static/range {v34 .. v34}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v8, v9

    const/16 v9, 0x64

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object v7, v15

    move-object/from16 v8, p0

    move/from16 v9, v34

    move v13, v3

    move/from16 v14, v35

    move-object v1, v15

    move/from16 v15, v36

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ILjava/lang/String;IIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v1, v0

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$14;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v34 .. v34}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v9, Lcom/badlogic/gdx/net/otUh/aBEBOpwLZcQFCZ;->EvHYP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget v28, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    move-object/from16 v24, v7

    move-object/from16 v25, p0

    move/from16 v26, v34

    move/from16 v29, v1

    move/from16 v30, v3

    move/from16 v31, v35

    move/from16 v32, v36

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ILjava/lang/String;IIIII)V

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

    add-int/2addr v1, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$15;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v34 .. v34}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v10

    const/16 v11, 0xa

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget v28, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    move-object/from16 v24, v7

    move/from16 v29, v1

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ILjava/lang/String;IIIII)V

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

    add-int/2addr v1, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;

    const-string v27, "1"

    sget v28, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    move-object/from16 v24, v7

    move/from16 v29, v1

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ILjava/lang/String;IIIII)V

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

    add-int/2addr v1, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$17;

    const-string v27, ""

    sget v28, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    move-object/from16 v24, v7

    move/from16 v29, v1

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ILjava/lang/String;IIIII)V

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

    add-int/2addr v1, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v34 .. v34}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v5

    const/16 v9, 0xa

    invoke-static {v5, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget v28, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    move-object/from16 v24, v7

    move/from16 v29, v1

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ILjava/lang/String;IIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int v29, v1, v5

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$19;

    invoke-static/range {v34 .. v34}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v34 .. v34}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v28

    move-object/from16 v24, v1

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ILjava/lang/String;IIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v5

    add-int/2addr v3, v1

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sub-int v5, v3, v4

    mul-int/lit8 v7, v53, 0x2

    sub-int v7, v48, v7

    move/from16 v8, v53

    invoke-direct {v1, v8, v5, v7, v4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v24, v3, v1

    move-object/from16 v1, v45

    move/from16 v3, v46

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v10, v1

    move v13, v4

    move v1, v8

    move/from16 v7, v33

    move/from16 v11, v37

    move/from16 v14, v40

    move/from16 v5, v41

    move/from16 v12, v47

    move/from16 v4, v48

    move/from16 v15, v54

    const/4 v3, 0x1

    goto/16 :goto_20

    :cond_46
    move/from16 v48, v4

    move/from16 v41, v5

    const/16 v20, 0x3

    goto :goto_34

    :cond_47
    move/from16 v48, v4

    move/from16 v41, v5

    const/16 v20, 0x3

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

    add-int v24, v17, v0

    :goto_34
    move/from16 v0, v24

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int v3, v41, v1

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

    move/from16 v4, v48

    const/4 v9, 0x0

    invoke-direct {v1, v9, v9, v4, v0}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v23

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->drawScrollPositionAlways:Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v3, v22

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getPosY()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getHeight()I

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
