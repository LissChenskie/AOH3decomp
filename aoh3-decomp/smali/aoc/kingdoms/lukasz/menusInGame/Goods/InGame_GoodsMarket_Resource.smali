.class public Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_GoodsMarket_Resource.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iActiveCivID:I

.field public static iResourceID:I

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 41

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v15, 0x2

    mul-int/2addr v5, v15

    sub-int v5, v4, v5

    int-to-float v5, v5

    const v18, 0x3ecccccd    # 0.4f

    mul-float v5, v5, v18

    float-to-int v5, v5

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v15

    sub-int v7, v4, v7

    int-to-float v7, v7

    const v19, 0x3e4ccccd    # 0.2f

    mul-float v7, v7, v19

    float-to-int v14, v7

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$1;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-eqz v7, :cond_1

    if-ne v7, v12, :cond_0

    goto :goto_0

    :cond_0
    move v9, v11

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v12

    :goto_1
    if-ne v7, v12, :cond_2

    move v10, v12

    goto :goto_2

    :cond_2
    move v10, v11

    :goto_2
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Name"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move/from16 v20, v14

    const/4 v14, 0x6

    mul-int/2addr v8, v14

    add-int v21, v7, v8

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v23, 0x0

    move-object v7, v13

    move-object/from16 v8, p0

    move-object/from16 v11, v16

    move/from16 v12, v17

    move-object/from16 v32, v13

    move v13, v1

    move/from16 v33, v20

    move/from16 v14, v23

    move v15, v5

    move/from16 v16, v21

    move/from16 v17, v22

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;ZZLjava/lang/String;IIIIII)V

    move-object/from16 v5, v32

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v15, 0x1

    sub-int/2addr v5, v15

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$2;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    const/4 v14, 0x3

    const/4 v13, 0x2

    if-eq v7, v13, :cond_4

    if-ne v7, v14, :cond_3

    goto :goto_3

    :cond_3
    const/16 v22, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    move/from16 v22, v15

    :goto_4
    if-ne v7, v14, :cond_5

    move/from16 v23, v15

    goto :goto_5

    :cond_5
    const/16 v23, 0x0

    :goto_5
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "ProductionEfficiency"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x6

    mul-int/2addr v8, v12

    add-int v29, v7, v8

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v27, 0x0

    move-object/from16 v20, v5

    move-object/from16 v21, p0

    move/from16 v26, v1

    move/from16 v28, v33

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v15

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$3;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    const/4 v11, 0x4

    const/4 v10, 0x5

    if-eq v7, v11, :cond_7

    if-ne v7, v10, :cond_6

    goto :goto_6

    :cond_6
    const/16 v22, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    move/from16 v22, v15

    :goto_7
    if-ne v7, v10, :cond_8

    move/from16 v23, v15

    goto :goto_8

    :cond_8
    const/16 v23, 0x0

    :goto_8
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Production"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v12

    add-int v29, v7, v8

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v27, 0x0

    move-object/from16 v20, v5

    move-object/from16 v21, p0

    move/from16 v26, v1

    move/from16 v28, v33

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v15

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int v26, v1, v5

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$4;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    const/4 v9, 0x7

    if-eq v5, v12, :cond_a

    if-ne v5, v9, :cond_9

    goto :goto_9

    :cond_9
    const/16 v22, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    move/from16 v22, v15

    :goto_a
    if-ne v5, v9, :cond_b

    move/from16 v23, v15

    goto :goto_b

    :cond_b
    const/16 v23, 0x0

    :goto_b
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Income"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v12

    add-int v29, v5, v7

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v27, 0x0

    move-object/from16 v20, v1

    move-object/from16 v21, p0

    move/from16 v28, v33

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v5

    const/4 v5, 0x0

    add-int/2addr v1, v5

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v7

    if-eqz v7, :cond_c

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_c

    :cond_c
    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_c
    move/from16 v17, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v13

    sub-int v7, v4, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v10

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, v18

    float-to-int v8, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v13

    sub-int v7, v4, v7

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v16, 0x5

    sub-int v7, v7, v16

    int-to-float v7, v7

    mul-float v7, v7, v19

    float-to-int v7, v7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_d
    sget v18, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iActiveCivID:I

    invoke-static/range {v18 .. v18}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v12

    if-ge v9, v12, :cond_e

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iActiveCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v12

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iResourceID:I

    if-ne v12, v10, :cond_d

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x5

    const/4 v12, 0x6

    goto :goto_d

    :cond_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_25

    move v12, v15

    :goto_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_24

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    if-nez v9, :cond_11

    move v10, v15

    const/4 v9, 0x0

    :goto_f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_10

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    move v9, v10

    :cond_f
    add-int/lit8 v10, v10, 0x1

    const/4 v14, 0x3

    goto :goto_f

    :cond_10
    move v11, v9

    goto/16 :goto_17

    :cond_11
    if-ne v9, v15, :cond_14

    move v9, v15

    const/4 v11, 0x0

    :goto_10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_13

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    move v11, v9

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_13
    const/4 v14, 0x3

    goto/16 :goto_17

    :cond_14
    if-ne v9, v13, :cond_16

    move v9, v15

    const/4 v11, 0x0

    :goto_11
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_13

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v10

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v14

    cmpl-float v10, v10, v14

    if-lez v10, :cond_15

    move v11, v9

    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_16
    const/4 v14, 0x3

    if-ne v9, v14, :cond_18

    move v9, v15

    const/4 v11, 0x0

    :goto_12
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_21

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v10

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v20

    cmpg-float v10, v10, v20

    if-gez v10, :cond_17

    move v11, v9

    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_18
    const/4 v11, 0x4

    if-ne v9, v11, :cond_1a

    move v10, v15

    const/4 v9, 0x0

    :goto_13
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v11

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v20

    cmpl-float v11, v11, v20

    if-lez v11, :cond_19

    move v9, v10

    :cond_19
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_1a
    const/4 v10, 0x5

    if-ne v9, v10, :cond_1c

    move v9, v15

    const/4 v11, 0x0

    :goto_14
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_21

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v10

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v20

    cmpg-float v10, v10, v20

    if-gez v10, :cond_1b

    move v11, v9

    :cond_1b
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_1c
    const/4 v11, 0x6

    if-ne v9, v11, :cond_1e

    move v10, v15

    const/4 v9, 0x0

    :goto_15
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v11

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v20

    cmpl-float v11, v11, v20

    if-lez v11, :cond_1d

    move v9, v10

    :cond_1d
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_1e
    const/4 v10, 0x7

    if-ne v9, v10, :cond_20

    move v9, v15

    const/4 v11, 0x0

    :goto_16
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_21

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v10

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v20

    cmpg-float v10, v10, v20

    if-gez v10, :cond_1f

    move v11, v9

    :cond_1f
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_20
    const/4 v11, 0x0

    :cond_21
    :goto_17
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$5;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v30, v12, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ". "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget-boolean v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v12, :cond_22

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_18

    :cond_22
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_18
    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v21, 0x2

    mul-int/lit8 v20, v20, 0x2

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v31, v7

    move-object v7, v10

    move/from16 v32, v8

    move-object/from16 v8, p0

    const/16 v33, 0x7

    move/from16 v35, v2

    move-object v2, v10

    const/16 v18, 0x5

    move v10, v12

    move v12, v11

    const/16 v16, 0x6

    const/16 v19, 0x4

    move/from16 v11, v20

    move/from16 v34, v3

    move v3, v12

    move/from16 v36, v16

    move v12, v0

    move/from16 v37, v4

    move-object v4, v13

    move/from16 v38, v21

    move v13, v1

    move/from16 v39, v14

    move/from16 v14, v32

    move/from16 v40, v15

    move/from16 v15, v17

    move/from16 v16, v22

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v2, v0

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$6;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v9

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    const/16 v10, 0xa

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v24, -0x1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v20, v7

    move-object/from16 v21, p0

    move/from16 v25, v2

    move/from16 v26, v1

    move/from16 v27, v31

    move/from16 v28, v17

    invoke-direct/range {v20 .. v29}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$7;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v9

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v20, v7

    move/from16 v25, v2

    invoke-direct/range {v20 .. v29}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int v23, v2, v7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v2

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$8;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_23

    const-string v13, "+"

    goto :goto_19

    :cond_23
    move-object v13, v4

    :goto_19
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v8, 0x64

    invoke-static {v2, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v20, v7

    move-object/from16 v21, p0

    move/from16 v24, v1

    move/from16 v25, v31

    move/from16 v26, v17

    invoke-direct/range {v20 .. v27}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move/from16 v11, v19

    move/from16 v12, v30

    move/from16 v7, v31

    move/from16 v8, v32

    move/from16 v3, v34

    move/from16 v2, v35

    move/from16 v4, v37

    move/from16 v13, v38

    move/from16 v14, v39

    move/from16 v15, v40

    goto/16 :goto_e

    :cond_24
    move/from16 v35, v2

    move/from16 v34, v3

    move/from16 v37, v4

    move/from16 v39, v14

    goto :goto_1a

    :cond_25
    move/from16 v35, v2

    move/from16 v34, v3

    move/from16 v37, v4

    move/from16 v39, v14

    move/from16 v40, v15

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$9;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "None"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v11, -0x1

    mul-int/lit8 v3, v0, 0x2

    sub-int v14, v37, v3

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v2

    move-object/from16 v8, p0

    move v12, v0

    move v13, v1

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    :goto_1a
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v34

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v4, v37

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$10;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iResourceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v7, v1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v35

    move/from16 v3, v34

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    const/4 v10, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    move-object v5, p1

    invoke-static/range {v5 .. v12}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->goodsOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->goodsOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v7, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->goodsOver:I

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

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->lTime2:J

    return-void
.end method
