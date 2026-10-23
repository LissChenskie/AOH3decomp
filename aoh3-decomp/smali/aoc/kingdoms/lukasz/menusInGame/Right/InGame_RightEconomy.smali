.class public Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_RightEconomy.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iModeID:I = 0x0

.field public static iSortID:I = 0x2

.field public static lTime:J

.field public static lTime2:J

.field public static totalEconomy:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 33

    const-string v1, ""

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v4, v2, v6

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int v5, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v3, v14

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v7

    if-eqz v7, :cond_0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_0

    :cond_0
    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_0
    mul-int/lit8 v9, v14, 0x2

    sub-int v23, v6, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v9, v23, v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    const/16 v24, 0x0

    sput v24, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->totalEconomy:F

    const/4 v10, 0x0

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v11

    if-ge v10, v11, :cond_2

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    if-lez v11, :cond_1

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->totalEconomy:F

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v12

    add-float/2addr v11, v12

    sput v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->totalEconomy:F

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$1;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Civilizations"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    if-nez v11, :cond_3

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_2

    :cond_3
    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_2
    move/from16 v22, v11

    move-object v15, v10

    move-object/from16 v16, p0

    move/from16 v18, v3

    move/from16 v19, v2

    move/from16 v20, v9

    move/from16 v21, v7

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$2;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Provinces"

    invoke-virtual {v11, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v3

    add-int v18, v11, v9

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    const/4 v15, 0x1

    if-ne v11, v15, :cond_4

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_3

    :cond_4
    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_3
    move/from16 v22, v11

    move v11, v15

    move-object v15, v10

    move-object/from16 v16, p0

    move/from16 v19, v2

    move/from16 v20, v9

    move/from16 v21, v7

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v11

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v10

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v15

    add-int/2addr v2, v10

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$3;

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Continents"

    invoke-virtual {v15, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_5

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_4

    :cond_5
    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_4
    move/from16 v22, v13

    move v13, v15

    move-object v15, v10

    move-object/from16 v16, p0

    move/from16 v18, v3

    move/from16 v19, v2

    move/from16 v20, v9

    move/from16 v21, v7

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$4;

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Religion"

    invoke-virtual {v15, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v13

    add-int v18, v3, v9

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    const/4 v13, 0x3

    if-ne v3, v13, :cond_6

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_5

    :cond_6
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_5
    move/from16 v22, v3

    move-object v15, v10

    move-object/from16 v16, p0

    move/from16 v19, v2

    move/from16 v20, v9

    move/from16 v21, v7

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v9

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    const-string v15, "Economy"

    if-nez v3, :cond_7

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$5;

    sget-object v16, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_ECONOMY:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    div-int/lit8 v18, v6, 0x2

    const/16 v19, 0x1

    move-object v9, v3

    move-object/from16 v10, p0

    move/from16 v26, v4

    move v4, v11

    move-object/from16 v11, v16

    const/4 v4, 0x0

    move-object/from16 v13, v17

    move-object/from16 v27, v15

    move v15, v2

    move/from16 v16, v23

    move/from16 v17, v18

    move/from16 v18, v19

    invoke-direct/range {v9 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    iput-boolean v4, v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->allowStatisticsMode:Z

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v9

    add-int/2addr v2, v3

    goto :goto_6

    :cond_7
    move/from16 v26, v4

    move-object/from16 v27, v15

    const/4 v4, 0x0

    :goto_6
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v6, v3

    int-to-float v3, v3

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v3, v9

    float-to-int v3, v3

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v10, v6, v10

    int-to-float v10, v10

    const/high16 v11, 0x3e800000    # 0.25f

    mul-float/2addr v10, v11

    float-to-int v15, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v10, v6, v10

    int-to-float v10, v10

    mul-float/2addr v10, v11

    float-to-int v14, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v10, v6, v10

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x4

    mul-int/2addr v12, v13

    sub-int/2addr v10, v12

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v12, v10

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v9, v6, v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v10, v13

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v11

    float-to-int v10, v9

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v9, v6, v9

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v16, 0x4

    sub-int v9, v9, v16

    int-to-float v9, v9

    mul-float/2addr v9, v11

    float-to-int v11, v9

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$6;

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v4, 0x1

    if-eqz v13, :cond_9

    if-ne v13, v4, :cond_8

    goto :goto_7

    :cond_8
    const/16 v17, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    move/from16 v17, v4

    :goto_8
    if-ne v13, v4, :cond_a

    const/4 v4, 0x1

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    :goto_9
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v18, v9

    const-string v9, "Name"

    invoke-virtual {v13, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v19, -0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v21, v21, 0x6

    add-int v21, v9, v21

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v23, v18

    move-object/from16 v9, v23

    move/from16 v25, v10

    move-object/from16 v10, p0

    move/from16 v28, v11

    move/from16 v11, v17

    move/from16 v29, v12

    move v12, v4

    const/4 v4, 0x4

    move/from16 v30, v14

    move/from16 v14, v19

    move/from16 v31, v15

    move/from16 v15, v20

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v21

    move/from16 v19, v22

    invoke-direct/range {v9 .. v19}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;ZZLjava/lang/String;IIIIII)V

    move-object/from16 v3, v23

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int v20, v20, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$7;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v15, 0x2

    const/4 v14, 0x3

    if-eq v9, v15, :cond_c

    if-ne v9, v14, :cond_b

    goto :goto_a

    :cond_b
    const/4 v11, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    const/4 v11, 0x1

    :goto_b
    if-ne v9, v14, :cond_d

    const/4 v12, 0x1

    goto :goto_c

    :cond_d
    const/4 v12, 0x0

    :goto_c
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v13, v27

    invoke-virtual {v9, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, -0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x6

    add-int v18, v9, v10

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v9, v3

    move-object/from16 v10, p0

    move-object/from16 v32, v13

    move-object/from16 v13, v16

    move/from16 v14, v17

    move/from16 v15, v20

    move/from16 v16, v2

    move/from16 v17, v31

    invoke-direct/range {v9 .. v19}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int v15, v20, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$8;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v14, 0x5

    if-eq v9, v4, :cond_f

    if-ne v9, v14, :cond_e

    goto :goto_d

    :cond_e
    const/4 v11, 0x0

    goto :goto_e

    :cond_f
    :goto_d
    const/4 v11, 0x1

    :goto_e
    if-ne v9, v14, :cond_10

    const/4 v12, 0x1

    goto :goto_f

    :cond_10
    const/4 v12, 0x0

    :goto_f
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Infrastructure"

    goto :goto_10

    :cond_11
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "World"

    :goto_10
    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v13, v9

    const/16 v16, -0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x6

    add-int v18, v9, v10

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v9, v3

    move-object/from16 v10, p0

    move/from16 v14, v16

    move/from16 v16, v2

    move/from16 v17, v30

    invoke-direct/range {v9 .. v19}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v9

    add-int/2addr v2, v3

    :try_start_0
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v9, "%"

    const/high16 v11, 0x42c80000    # 100.0f

    if-nez v3, :cond_26

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x1

    :goto_11
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v14

    if-ge v15, v14, :cond_13

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v14

    if-lez v14, :cond_12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v14

    sget v16, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->totalEconomy:F

    div-float v14, v14, v16

    mul-float/2addr v14, v11

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    :cond_13
    :goto_12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_25

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    if-nez v14, :cond_16

    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v15, v10, :cond_15

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    move v14, v15

    :cond_14
    add-int/lit8 v15, v15, 0x1

    const/high16 v11, 0x42c80000    # 100.0f

    goto :goto_13

    :cond_15
    :goto_14
    const/4 v10, 0x2

    goto/16 :goto_1a

    :cond_16
    const/4 v10, 0x1

    if-ne v14, v10, :cond_19

    const/4 v10, 0x0

    const/4 v15, 0x1

    :goto_15
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_18

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    move v10, v15

    :cond_17
    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    :cond_18
    move v14, v10

    goto :goto_14

    :cond_19
    const/4 v10, 0x2

    if-ne v14, v10, :cond_1c

    const/4 v11, 0x0

    const/4 v15, 0x1

    :goto_16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v15, v14, :cond_1b

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpg-float v14, v14, v16

    if-gez v14, :cond_1a

    move v11, v15

    :cond_1a
    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    :cond_1b
    move v14, v11

    goto/16 :goto_1a

    :cond_1c
    const/4 v11, 0x3

    if-ne v14, v11, :cond_1e

    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_17
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_23

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpl-float v11, v11, v16

    if-lez v11, :cond_1d

    move v14, v15

    :cond_1d
    add-int/lit8 v15, v15, 0x1

    goto :goto_17

    :cond_1e
    if-ne v14, v4, :cond_20

    const/4 v11, 0x0

    const/4 v15, 0x1

    :goto_18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v15, v14, :cond_1b

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpg-float v14, v14, v16

    if-gez v14, :cond_1f

    move v11, v15

    :cond_1f
    add-int/lit8 v15, v15, 0x1

    goto :goto_18

    :cond_20
    const/4 v11, 0x5

    if-ne v14, v11, :cond_22

    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_23

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpl-float v11, v11, v16

    if-lez v11, :cond_21

    move v14, v15

    :cond_21
    add-int/lit8 v15, v15, 0x1

    goto :goto_19

    :cond_22
    const/4 v14, 0x0

    :cond_23
    :goto_1a
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v15

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$9;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v19, v16, 0x2

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v27, v15

    move-object/from16 v15, v27

    move-object/from16 v16, p0

    move/from16 v20, v11

    move/from16 v21, v2

    move/from16 v22, v29

    move/from16 v23, v7

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v15

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v15, v16

    add-int/2addr v11, v15

    new-instance v15, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    const/high16 v17, 0x42c80000    # 100.0f

    cmpl-float v16, v16, v17

    if-ltz v16, :cond_24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move-object/from16 v16, v15

    const/4 v15, 0x1

    invoke-static {v10, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1b

    :cond_24
    move-object/from16 v16, v15

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/16 v10, 0xa

    invoke-static {v4, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    :goto_1b
    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v18, -0x1

    move-object/from16 v10, v16

    move-object v15, v10

    move-object/from16 v16, v4

    move/from16 v19, v11

    move/from16 v20, v2

    move/from16 v21, v25

    move/from16 v22, v7

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v10

    add-int v19, v11, v4

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const/16 v15, 0x64

    invoke-static {v11, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v18, -0x1

    move-object v15, v4

    move/from16 v20, v2

    move/from16 v21, v28

    move/from16 v22, v7

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v10

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v10

    add-int/2addr v2, v4

    invoke-interface {v3, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v12, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v13, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x4

    const/high16 v11, 0x42c80000    # 100.0f

    goto/16 :goto_12

    :cond_25
    move/from16 v30, v6

    goto/16 :goto_3d

    :catch_0
    move-exception v0

    move-object v2, v0

    move/from16 v30, v6

    goto/16 :goto_3c

    :cond_26
    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_1c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v10

    if-ge v13, v10, :cond_28

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    if-lez v10, :cond_27

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v13, v13, 0x1

    goto :goto_1c

    :cond_28
    const/16 v10, 0xfa

    :goto_1d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_25

    add-int/lit8 v11, v10, -0x1

    if-lez v10, :cond_25

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    if-nez v10, :cond_2a

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_1e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v15, v10, :cond_34

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_29

    move v13, v15

    :cond_29
    add-int/lit8 v15, v15, 0x1

    goto :goto_1e

    :cond_2a
    const/4 v12, 0x1

    if-ne v10, v12, :cond_2c

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_1f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v15, v10, :cond_34

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2b

    move v13, v15

    :cond_2b
    add-int/lit8 v15, v15, 0x1

    goto :goto_1f

    :cond_2c
    const/4 v12, 0x2

    if-ne v10, v12, :cond_2e

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_20
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v15, v10, :cond_34

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpg-float v10, v10, v12

    if-gez v10, :cond_2d

    move v13, v15

    :cond_2d
    add-int/lit8 v15, v15, 0x1

    goto :goto_20

    :cond_2e
    const/4 v12, 0x3

    if-ne v10, v12, :cond_30

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_21
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v15, v10, :cond_34

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v10, v10, v12

    if-lez v10, :cond_2f

    move v13, v15

    :cond_2f
    add-int/lit8 v15, v15, 0x1

    goto :goto_21

    :cond_30
    const/4 v12, 0x4

    if-ne v10, v12, :cond_32

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_22
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v15, v10, :cond_34

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ge v10, v12, :cond_31

    move v13, v15

    :cond_31
    add-int/lit8 v15, v15, 0x1

    goto :goto_22

    :cond_32
    const/4 v12, 0x5

    const/4 v13, 0x0

    if-ne v10, v12, :cond_34

    const/4 v15, 0x1

    :goto_23
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v15, v10, :cond_34

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v10, v12, :cond_33

    move v13, v15

    :cond_33
    add-int/lit8 v15, v15, 0x1

    goto :goto_23

    :cond_34
    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v12

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$10;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x2

    mul-int/lit8 v19, v14, 0x2

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object v15, v12

    move-object/from16 v16, p0

    move/from16 v20, v10

    move/from16 v21, v2

    move/from16 v22, v29

    move/from16 v23, v7

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v14

    add-int/2addr v10, v12

    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/16 v15, 0xa

    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v18, -0x1

    move-object v15, v12

    move/from16 v19, v10

    move/from16 v20, v2

    move/from16 v21, v25

    move/from16 v22, v7

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v14

    add-int v19, v10, v12

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " / "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v18, -0x1

    move-object v15, v10

    move/from16 v20, v2

    move/from16 v21, v28

    move/from16 v22, v7

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v12

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v10

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v12

    add-int/2addr v2, v10

    invoke-interface {v3, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v4, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v9, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v10, v11

    goto/16 :goto_1d

    :cond_35
    const/4 v4, 0x2

    if-ne v3, v4, :cond_46

    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_24
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ge v13, v11, :cond_36

    :try_start_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_24

    :cond_36
    const/4 v13, 0x0

    :goto_25
    :try_start_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-ge v13, v11, :cond_38

    :try_start_5
    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    if-lez v11, :cond_37

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v11

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v12

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v14

    add-float/2addr v12, v14

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_37
    add-int/lit8 v13, v13, 0x1

    goto :goto_25

    :cond_38
    const/4 v11, 0x0

    :try_start_6
    invoke-interface {v3, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v4, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v13, 0x0

    :goto_26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-ge v13, v11, :cond_39

    :try_start_7
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->totalEconomy:F

    div-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v10, v13, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_26

    :cond_39
    :goto_27
    :try_start_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_25

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    if-nez v11, :cond_3b

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_28
    :try_start_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_45

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3a

    move v13, v15

    :cond_3a
    add-int/lit8 v15, v15, 0x1

    goto :goto_28

    :cond_3b
    const/4 v12, 0x1

    if-ne v11, v12, :cond_3d

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_29
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_45

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3c

    move v13, v15

    :cond_3c
    add-int/lit8 v15, v15, 0x1

    goto :goto_29

    :cond_3d
    const/4 v12, 0x2

    if-ne v11, v12, :cond_3f

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_2a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_45

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3e

    move v13, v15

    :cond_3e
    add-int/lit8 v15, v15, 0x1

    goto :goto_2a

    :cond_3f
    const/4 v12, 0x3

    if-ne v11, v12, :cond_41

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_2b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_45

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_40

    move v13, v15

    :cond_40
    add-int/lit8 v15, v15, 0x1

    goto :goto_2b

    :cond_41
    const/4 v12, 0x4

    if-ne v11, v12, :cond_43

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_2c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_45

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_42

    move v13, v15

    :cond_42
    add-int/lit8 v15, v15, 0x1

    goto :goto_2c

    :cond_43
    const/4 v12, 0x5

    const/4 v13, 0x0

    if-ne v11, v12, :cond_45

    const/4 v15, 0x1

    :goto_2d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_45

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_44

    move v13, v15

    :cond_44
    add-int/lit8 v15, v15, 0x1

    goto :goto_2d

    :cond_45
    :try_start_a
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$11;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v16, 0x2

    mul-int/lit8 v19, v15, 0x2

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object v15, v12

    move-object/from16 v16, p0

    move-object/from16 v17, v14

    move/from16 v20, v11

    move/from16 v21, v2

    move/from16 v22, v29

    move/from16 v23, v7

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v14

    add-int/2addr v11, v12

    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move/from16 v30, v6

    const/4 v6, 0x1

    :try_start_b
    invoke-static {v15, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v18, -0x1

    move-object v15, v12

    move/from16 v19, v11

    move/from16 v20, v2

    move/from16 v21, v25

    move/from16 v22, v7

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    const/4 v12, 0x1

    sub-int/2addr v6, v12

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v12

    add-int v19, v11, v6

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/16 v14, 0xa

    invoke-static {v12, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v18, -0x1

    move-object v15, v6

    move/from16 v20, v2

    move/from16 v21, v28

    move/from16 v22, v7

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    const/4 v11, 0x1

    sub-int/2addr v6, v11

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v6

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v11

    add-int/2addr v2, v6

    invoke-interface {v3, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v4, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v10, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move/from16 v6, v30

    goto/16 :goto_27

    :cond_46
    move/from16 v30, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_2e
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionsSize()I

    move-result v10

    if-ge v13, v10, :cond_47

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2e

    :cond_47
    const/4 v13, 0x0

    :goto_2f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v10

    if-ge v13, v10, :cond_49

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    if-lez v10, :cond_48

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v10

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v11

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v12

    add-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_48
    add-int/lit8 v13, v13, 0x1

    goto :goto_2f

    :cond_49
    const/4 v13, 0x0

    :goto_30
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v13, v10, :cond_4a

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->totalEconomy:F

    div-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v6, v13, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_30

    :cond_4a
    :goto_31
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5b

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    if-nez v10, :cond_4d

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_32
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v15, v10, :cond_4c

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4b

    move v13, v15

    :cond_4b
    add-int/lit8 v15, v15, 0x1

    goto :goto_32

    :cond_4c
    move v10, v13

    const/4 v11, 0x2

    :goto_33
    const/4 v12, 0x4

    :goto_34
    const/4 v13, 0x5

    goto/16 :goto_3a

    :cond_4d
    const/4 v11, 0x1

    if-ne v10, v11, :cond_4f

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v15, v10, :cond_4c

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4e

    move v13, v15

    :cond_4e
    add-int/lit8 v15, v15, 0x1

    goto :goto_35

    :cond_4f
    const/4 v11, 0x2

    if-ne v10, v11, :cond_52

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_36
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v15, v10, :cond_51

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpg-float v10, v10, v12

    if-gez v10, :cond_50

    move v13, v15

    :cond_50
    add-int/lit8 v15, v15, 0x1

    goto :goto_36

    :cond_51
    move v10, v13

    goto :goto_33

    :cond_52
    const/4 v12, 0x3

    if-ne v10, v12, :cond_54

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_37
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v15, v10, :cond_51

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v10, v10, v12

    if-lez v10, :cond_53

    move v13, v15

    :cond_53
    add-int/lit8 v15, v15, 0x1

    goto :goto_37

    :cond_54
    const/4 v12, 0x4

    if-ne v10, v12, :cond_57

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_38
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v15, v10, :cond_56

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpg-float v10, v10, v14

    if-gez v10, :cond_55

    move v13, v15

    :cond_55
    add-int/lit8 v15, v15, 0x1

    goto :goto_38

    :cond_56
    move v10, v13

    goto/16 :goto_34

    :cond_57
    const/4 v13, 0x5

    if-ne v10, v13, :cond_59

    const/4 v10, 0x0

    const/4 v15, 0x1

    :goto_39
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v15, v14, :cond_5a

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpl-float v14, v14, v16

    if-lez v14, :cond_58

    move v10, v15

    :cond_58
    add-int/lit8 v15, v15, 0x1

    goto :goto_39

    :cond_59
    const/4 v10, 0x0

    :cond_5a
    :goto_3a
    sget v14, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v14, v15

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$12;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v23

    const/16 v24, 0x0

    move-object v12, v15

    move-object/from16 v16, p0

    move-object/from16 v17, v11

    move/from16 v19, v14

    move/from16 v20, v2

    move/from16 v21, v29

    move/from16 v22, v7

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int/2addr v14, v11

    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/4 v13, 0x1

    invoke-static {v15, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v18, -0x1

    move-object v15, v11

    move/from16 v19, v14

    move/from16 v20, v2

    move/from16 v21, v25

    move/from16 v22, v7

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int v19, v14, v11

    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v18, -0x1

    move-object v15, v11

    move/from16 v20, v2

    move/from16 v21, v28

    move/from16 v22, v7

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v12

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int/2addr v2, v11

    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v4, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v6, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_31

    :catch_1
    move-exception v0

    goto :goto_3b

    :catch_2
    move-exception v0

    move/from16 v30, v6

    :goto_3b
    move-object v2, v0

    :goto_3c
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_5b
    :goto_3d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_3e
    if-ge v13, v2, :cond_5d

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v4

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v6

    if-ge v3, v4, :cond_5c

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    :cond_5c
    add-int/lit8 v13, v13, 0x1

    goto :goto_3e

    :cond_5d
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v2, v5

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v6

    sub-int/2addr v4, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x3

    mul-int/2addr v6, v7

    add-int/2addr v4, v6

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v6, v30

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v6, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$13;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v4, v32

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Total"

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->totalEconomy:F

    const/4 v9, 0x1

    invoke-static {v1, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    move-object v9, v3

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v2, p0

    move/from16 v4, v26

    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    iput v1, v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->scrollExtraPosX:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, p2

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getPosX()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getPosX()I

    move-result v0

    add-int v1, v0, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getPosY()I

    move-result v0

    add-int v2, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v0

    const/4 v5, 0x0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getPosX()I

    move-result v1

    add-int v2, v1, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object v0, p0

    move v2, v8

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

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

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->lTime2:J

    return-void
.end method
