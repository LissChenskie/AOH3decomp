.class public Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_GraphPopulation.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static activeModeID:I

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 27

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title928:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

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

    mul-int/2addr v1, v2

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v5, v7

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v15, 0x0

    sput-boolean v15, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->inGoodsView:Z

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x4

    mul-int/2addr v8, v14

    add-int v16, v7, v8

    mul-int/lit8 v7, v0, 0x2

    sub-int v17, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x5

    mul-int/2addr v7, v13

    sub-int v7, v17, v7

    const/4 v12, 0x6

    div-int/lit8 v18, v7, 0x6

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$1;

    const-string v9, ""

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->population:I

    move-object v7, v11

    move-object/from16 v8, p0

    move-object v15, v11

    move v11, v0

    move v12, v1

    move/from16 v13, v18

    move/from16 v14, v16

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int v20, v0, v7

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$2;

    const-string v9, ""

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    move-object v7, v14

    move-object/from16 v8, p0

    move/from16 v11, v20

    move-object v2, v14

    move/from16 v14, v16

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v15

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int v20, v20, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$3;

    const-string v9, ""

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    move-object v7, v2

    move/from16 v11, v20

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v15

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int v20, v20, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$4;

    const-string v9, ""

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    move-object v7, v2

    move/from16 v11, v20

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v15

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int v20, v20, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$5;

    const-string v9, ""

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    move-object v7, v2

    move/from16 v11, v20

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v15

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int v11, v20, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$6;

    const-string v9, ""

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v15

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v1

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    const-string v14, "Provinces"

    const-string v13, "ConstructedBuildings"

    const/4 v12, 0x3

    const-string v11, "Economy"

    const-string v10, "Population"

    const-string v8, "Civilizations"

    if-nez v7, :cond_0

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$7;

    sget-object v16, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sub-int v7, v5, v2

    sub-int v1, v7, v1

    const/16 v21, 0x1

    move-object v7, v9

    move-object/from16 v8, p0

    move/from16 v22, v3

    move-object v3, v9

    move-object/from16 v9, v16

    move/from16 v23, v4

    move-object v4, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v4

    move-object v4, v11

    move-object/from16 v11, v20

    move v12, v0

    move-object v0, v13

    move v13, v2

    move-object/from16 v24, v14

    move/from16 v14, v17

    move-object/from16 v19, v0

    move v0, v15

    move v15, v1

    move/from16 v16, v21

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    move-object/from16 v18, v19

    move-object/from16 v25, v24

    goto/16 :goto_1

    :cond_0
    move/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v18, v10

    move-object v4, v11

    move-object/from16 v24, v14

    move v3, v0

    move v0, v15

    move-object v15, v13

    if-ne v7, v0, :cond_1

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$8;

    sget-object v9, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_ECONOMY:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sub-int v7, v5, v2

    sub-int v1, v7, v1

    const/16 v16, 0x1

    move-object v7, v14

    move-object/from16 v8, p0

    move v12, v3

    move v13, v2

    move-object v3, v14

    move/from16 v14, v17

    move-object v0, v15

    move v15, v1

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object/from16 v25, v24

    move-object/from16 v26, v18

    move-object/from16 v18, v0

    move-object/from16 v0, v26

    goto/16 :goto_1

    :cond_1
    move-object v0, v15

    const/4 v9, 0x2

    if-ne v7, v9, :cond_2

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$9;

    sget-object v9, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_CONSTRUCTED_BUILDINGS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sub-int v7, v5, v2

    sub-int v1, v7, v1

    const/16 v16, 0x1

    move-object v7, v15

    move-object/from16 v8, p0

    move v12, v3

    move v13, v2

    move/from16 v14, v17

    move-object v3, v15

    move v15, v1

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v15, 0x3

    if-ne v7, v15, :cond_3

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$10;

    sget-object v9, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_INFRASTRUCTURE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v13, v18

    invoke-virtual {v7, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sub-int v7, v5, v2

    sub-int v1, v7, v1

    const/16 v16, 0x1

    move-object v7, v14

    move-object/from16 v8, p0

    move v12, v3

    move-object v3, v13

    move v13, v2

    move-object/from16 v18, v3

    move-object v3, v14

    move/from16 v14, v17

    move v15, v1

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object/from16 v15, v18

    const/4 v14, 0x4

    if-ne v7, v14, :cond_4

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$11;

    sget-object v9, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->NUM_OF_PROVINCES_BY_CONTINENT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v12, v24

    invoke-virtual {v7, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sub-int v7, v5, v2

    sub-int v1, v7, v1

    const/16 v16, 0x1

    move-object v7, v13

    move-object/from16 v8, p0

    move-object/from16 v25, v12

    move v12, v3

    move-object v3, v13

    move v13, v2

    move/from16 v14, v17

    move-object/from16 v18, v0

    move-object v0, v15

    move v15, v1

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    move-object/from16 v18, v0

    move-object v0, v15

    move-object/from16 v25, v24

    const/4 v15, 0x5

    if-ne v7, v15, :cond_5

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$12;

    sget-object v9, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_UNLOCKED_TECHS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sub-int v7, v5, v2

    sub-int v1, v7, v1

    const/16 v16, 0x1

    move-object v7, v14

    move-object/from16 v8, p0

    move v12, v3

    move v13, v2

    move-object v3, v14

    move/from16 v14, v17

    move v15, v1

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 v15, 0x6

    if-ne v7, v15, :cond_6

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$13;

    sget-object v9, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_PRESTIGE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sub-int v7, v5, v2

    sub-int v1, v7, v1

    const/16 v16, 0x1

    move-object v7, v14

    move-object/from16 v8, p0

    move v12, v3

    move v13, v2

    move-object v3, v14

    move/from16 v14, v17

    move v15, v1

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 v9, 0x7

    if-ne v7, v9, :cond_7

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$14;

    sget-object v9, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_REGIMENTS_LIMIT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sub-int v7, v5, v2

    sub-int v1, v7, v1

    const/16 v16, 0x1

    move-object v7, v15

    move-object/from16 v8, p0

    move v12, v3

    move v13, v2

    move/from16 v14, v17

    move-object v3, v15

    move v15, v1

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v7, v23

    const/4 v9, 0x0

    invoke-direct {v1, v9, v9, v7, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$15;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    if-nez v2, :cond_8

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v12, v0

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    if-ne v2, v0, :cond_9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    const/4 v0, 0x2

    if-ne v2, v0, :cond_a

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v2, v18

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    const/4 v0, 0x3

    if-ne v2, v0, :cond_b

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Infrastructure"

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_b
    const/4 v0, 0x4

    if-ne v2, v0, :cond_c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v2, v25

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_c
    const/4 v0, 0x5

    if-ne v2, v0, :cond_d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "UnlockedTechnologies"

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_d
    const/4 v0, 0x6

    if-ne v2, v0, :cond_e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Prestige"

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "RegimentsLimit"

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Year"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->title928:I

    move-object v10, v1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Ljava/lang/String;Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/4 v2, 0x2

    div-int/2addr v0, v2

    div-int/lit8 v4, v7, 0x2

    sub-int v2, v0, v4

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v22

    move v4, v7

    move v7, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->drawScrollPositionAlways:Z

    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Goods(Z)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f266666    # 0.65f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getPosX()I

    move-result v0

    add-int v1, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getPosY()I

    move-result v0

    add-int v2, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v0

    const/4 v5, 0x0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->insideTop928:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideBot928:I

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public onHovered()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameGoods()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->lTime:J

    return-void
.end method
