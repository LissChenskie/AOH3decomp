.class public Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_GoodsMarket.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iActiveCivID:I = 0x0

.field public static iSortID:I = 0x4

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 48

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

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move v7, v5

    move v13, v7

    move v14, v13

    :goto_0
    sget v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v7, v8, :cond_2

    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v8

    if-le v8, v14, :cond_0

    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v14

    :cond_0
    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v8

    if-le v8, v13, :cond_1

    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v18

    mul-int/lit8 v7, v0, 0x2

    sub-int v19, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v19, v7

    const/4 v12, 0x2

    div-int/2addr v7, v12

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    sget v16, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v12

    move/from16 v16, v14

    const/4 v14, 0x1

    if-ge v5, v12, :cond_7

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v12

    if-ltz v12, :cond_5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v14

    :goto_2
    if-ltz v12, :cond_4

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sget v20, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    move/from16 v22, v13

    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v13

    if-ne v14, v13, :cond_3

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v14

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v14

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v14

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v12, v12, -0x1

    move/from16 v13, v22

    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_4
    move/from16 v22, v13

    const/4 v14, 0x0

    :goto_3
    if-nez v14, :cond_6

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move/from16 v22, v13

    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move/from16 v14, v16

    move/from16 v13, v22

    const/4 v12, 0x2

    goto/16 :goto_1

    :cond_7
    move/from16 v22, v13

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$1;

    move-object/from16 v5, p0

    invoke-direct {v13, v5}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v14

    :goto_5
    if-ltz v12, :cond_9

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    const v21, 0x3a83126f    # 0.001f

    cmpl-float v20, v20, v21

    if-lez v20, :cond_8

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    move-object/from16 v23, v7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v14, v5, v7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    goto :goto_6

    :cond_8
    move-object/from16 v23, v7

    :goto_6
    add-int/lit8 v12, v12, -0x1

    const/4 v14, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, v23

    goto :goto_5

    :cond_9
    move-object/from16 v23, v7

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    const/4 v14, 0x3

    mul-int/2addr v5, v14

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v7, v12

    add-int/2addr v5, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$2;

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v17, v1, v17

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v20, v20, 0x2

    sub-int v20, v5, v20

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v24, v24, 0x2

    sub-int v5, v5, v24

    const/16 v24, 0x0

    move-object/from16 v35, v23

    move-object/from16 v23, v7

    move-object/from16 v36, v8

    move-object/from16 v8, p0

    move-object/from16 v37, v9

    move v9, v0

    move-object/from16 v38, v10

    move/from16 v10, v17

    move-object/from16 v39, v11

    move/from16 v11, v20

    move v12, v5

    move/from16 v5, v22

    move/from16 v20, v2

    move/from16 v21, v16

    const/4 v2, 0x1

    move-object/from16 v14, v24

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/2addr v8, v14

    add-int v22, v7, v8

    sub-int v7, v4, v0

    sub-int v33, v7, v22

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x3

    mul-int/2addr v8, v13

    add-int/2addr v7, v8

    add-int v34, v1, v7

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$3;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "LargestGoodsProducers"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v17

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object v7, v12

    move-object/from16 v8, p0

    move/from16 v11, v22

    move-object v2, v12

    move v12, v1

    move/from16 v40, v3

    move v3, v13

    move/from16 v13, v33

    move v3, v14

    move/from16 v14, v16

    move-object/from16 v41, v15

    move/from16 v15, v17

    move/from16 v16, v23

    move/from16 v17, v24

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$4;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "UniqueResources"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v3

    add-int v32, v18, v7

    move-object/from16 v23, v2

    move-object/from16 v24, p0

    move/from16 v28, v22

    move/from16 v29, v1

    move/from16 v30, v33

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int v29, v1, v2

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$5;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Legacy"

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getLegacyPerUniqueResources(I)F

    move-result v7

    const/16 v16, 0x0

    cmpl-float v7, v7, v16

    if-lez v7, :cond_a

    const/4 v7, 0x0

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/model/data/xlbt/LBhZogys;->rQbRx:Ljava/lang/String;

    goto :goto_7

    :cond_a
    move-object v7, v15

    :goto_7
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getLegacyPerUniqueResources(I)F

    move-result v7

    const/16 v14, 0x64

    invoke-static {v7, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v2, v3

    add-int v32, v18, v2

    move-object/from16 v23, v1

    move-object/from16 v24, p0

    move/from16 v28, v22

    move/from16 v30, v33

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v1, v3

    add-int v1, v21, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x5

    mul-int/2addr v2, v13

    add-int/2addr v2, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v3

    add-int v31, v2, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v3

    sub-int v7, v4, v7

    sub-int v7, v7, v31

    const/4 v12, 0x4

    div-int/2addr v7, v12

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$6;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/4 v10, 0x1

    if-eqz v9, :cond_c

    if-ne v9, v10, :cond_b

    goto :goto_8

    :cond_b
    const/16 v25, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    move/from16 v25, v10

    :goto_9
    if-ne v9, v10, :cond_d

    const/16 v26, 0x1

    goto :goto_a

    :cond_d
    const/16 v26, 0x0

    :goto_a
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Name"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, -0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x6

    mul-int/2addr v10, v11

    add-int v32, v9, v10

    sget v33, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v23, v8

    move-object/from16 v24, p0

    move/from16 v29, v5

    move/from16 v30, v34

    invoke-direct/range {v23 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v8

    add-int/2addr v5, v8

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$7;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/4 v10, 0x3

    if-eq v9, v3, :cond_f

    if-ne v9, v10, :cond_e

    goto :goto_b

    :cond_e
    const/16 v25, 0x0

    goto :goto_c

    :cond_f
    :goto_b
    const/16 v25, 0x1

    :goto_c
    if-ne v9, v10, :cond_10

    const/16 v26, 0x1

    goto :goto_d

    :cond_10
    const/16 v26, 0x0

    :goto_d
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Provinces"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, -0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v10, v11

    add-int v32, v9, v10

    sget v33, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v23, v8

    move-object/from16 v24, p0

    move/from16 v29, v5

    move/from16 v30, v34

    move/from16 v31, v7

    invoke-direct/range {v23 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v8

    add-int/2addr v5, v8

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$8;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    if-eq v9, v12, :cond_12

    if-ne v9, v13, :cond_11

    goto :goto_e

    :cond_11
    const/16 v25, 0x0

    goto :goto_f

    :cond_12
    :goto_e
    const/16 v25, 0x1

    :goto_f
    if-ne v9, v13, :cond_13

    const/16 v26, 0x1

    goto :goto_10

    :cond_13
    const/16 v26, 0x0

    :goto_10
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Production"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, -0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v10, v11

    add-int v32, v9, v10

    sget v33, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v23, v8

    move-object/from16 v24, p0

    move/from16 v29, v5

    move/from16 v30, v34

    move/from16 v31, v7

    invoke-direct/range {v23 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v8

    add-int/2addr v5, v8

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$9;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/4 v10, 0x7

    if-eq v9, v11, :cond_15

    if-ne v9, v10, :cond_14

    goto :goto_11

    :cond_14
    const/16 v25, 0x0

    goto :goto_12

    :cond_15
    :goto_11
    const/16 v25, 0x1

    :goto_12
    if-ne v9, v10, :cond_16

    const/16 v26, 0x1

    goto :goto_13

    :cond_16
    const/16 v26, 0x0

    :goto_13
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Income"

    invoke-virtual {v9, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, -0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v14, v11

    add-int v32, v9, v14

    sget v33, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v23, v8

    move-object/from16 v24, p0

    move/from16 v29, v5

    move/from16 v30, v34

    move/from16 v31, v7

    invoke-direct/range {v23 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v8

    add-int v29, v5, v8

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$10;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/16 v14, 0x8

    const/16 v9, 0x9

    if-eq v8, v14, :cond_18

    if-ne v8, v9, :cond_17

    goto :goto_14

    :cond_17
    const/16 v25, 0x0

    goto :goto_15

    :cond_18
    :goto_14
    const/16 v25, 0x1

    :goto_15
    if-ne v8, v9, :cond_19

    const/16 v26, 0x1

    goto :goto_16

    :cond_19
    const/16 v26, 0x0

    :goto_16
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "ShareInWorldProduction"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v9, v11

    add-int v32, v8, v9

    sget v33, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v23, v5

    move-object/from16 v24, p0

    move/from16 v30, v34

    move/from16 v31, v7

    invoke-direct/range {v23 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int v34, v34, v5

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1a

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$11;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "None"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v11, -0x1

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v1

    move-object/from16 v8, p0

    move v12, v0

    move/from16 v13, v34

    move/from16 v14, v19

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;IIIIII)V

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

    add-int v34, v34, v0

    move/from16 v42, v4

    move/from16 v0, v34

    goto/16 :goto_32

    :cond_1a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_17
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v8

    if-ge v7, v8, :cond_1b

    move-object/from16 v9, v41

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_1b
    move-object/from16 v9, v41

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v7

    const/4 v14, 0x0

    :goto_18
    const/high16 v10, 0x42c80000    # 100.0f

    if-ge v14, v7, :cond_1d

    move-object/from16 v11, v38

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    mul-float v23, v23, v10

    sget-object v13, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    move-object/from16 v3, v39

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    div-float v23, v23, v12

    mul-float v23, v23, v10

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    sget-object v12, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v12, v12, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    move-object/from16 v13, v36

    invoke-interface {v13, v14, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move/from16 v24, v7

    move-object/from16 v12, v35

    goto :goto_19

    :cond_1c
    move-object/from16 v13, v36

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move-object/from16 v12, v35

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    move/from16 v24, v7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v13, v14, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_19
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v39, v3

    move-object/from16 v38, v11

    move-object/from16 v35, v12

    move-object/from16 v36, v13

    move/from16 v7, v24

    const/4 v3, 0x2

    const/4 v11, 0x6

    const/4 v12, 0x4

    const/4 v13, 0x5

    goto/16 :goto_18

    :cond_1d
    move-object/from16 v12, v35

    move-object/from16 v13, v36

    move-object/from16 v11, v38

    move-object/from16 v3, v39

    sub-int v7, v19, v2

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v7, v14

    const/4 v14, 0x4

    div-int/lit8 v35, v7, 0x4

    move/from16 v36, v34

    :goto_1a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3f

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    if-nez v7, :cond_20

    const/4 v7, 0x0

    const/4 v14, 0x1

    :goto_1b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v14, v10, :cond_1f

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v24, v7

    invoke-static/range {v23 .. v23}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    move v7, v14

    goto :goto_1c

    :cond_1e
    move/from16 v7, v24

    :goto_1c
    add-int/lit8 v14, v14, 0x1

    goto :goto_1b

    :cond_1f
    move/from16 v24, v7

    move-object/from16 v14, v37

    move-object/from16 v37, v13

    move/from16 v13, v24

    goto/16 :goto_29

    :cond_20
    const/4 v10, 0x1

    if-ne v7, v10, :cond_22

    const/4 v7, 0x0

    const/4 v14, 0x1

    :goto_1d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v14, v10, :cond_1f

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v24, v7

    invoke-static/range {v23 .. v23}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    move v7, v14

    goto :goto_1e

    :cond_21
    move/from16 v7, v24

    :goto_1e
    add-int/lit8 v14, v14, 0x1

    goto :goto_1d

    :cond_22
    const/4 v14, 0x2

    if-ne v7, v14, :cond_24

    const/4 v7, 0x0

    const/4 v10, 0x1

    :goto_1f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v10, v14, :cond_1f

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    move/from16 v24, v7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v14, v7, :cond_23

    move v7, v10

    goto :goto_20

    :cond_23
    move/from16 v7, v24

    :goto_20
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    :cond_24
    const/4 v10, 0x3

    if-ne v7, v10, :cond_26

    const/4 v7, 0x0

    const/4 v14, 0x1

    :goto_21
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v14, v10, :cond_1f

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    move/from16 v24, v7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v10, v7, :cond_25

    move v7, v14

    goto :goto_22

    :cond_25
    move/from16 v7, v24

    :goto_22
    add-int/lit8 v14, v14, 0x1

    goto :goto_21

    :cond_26
    const/4 v14, 0x4

    if-ne v7, v14, :cond_2a

    const/4 v7, 0x0

    const/4 v10, 0x1

    :goto_23
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v10, v14, :cond_28

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    cmpl-float v14, v14, v23

    if-lez v14, :cond_27

    move v7, v10

    :cond_27
    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    :cond_28
    move-object/from16 v14, v37

    move-object/from16 v37, v13

    :cond_29
    move v13, v7

    goto/16 :goto_29

    :cond_2a
    const/4 v14, 0x5

    if-ne v7, v14, :cond_2c

    const/4 v7, 0x0

    const/4 v10, 0x1

    :goto_24
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v10, v14, :cond_28

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    cmpg-float v14, v14, v23

    if-gez v14, :cond_2b

    move v7, v10

    :cond_2b
    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    :cond_2c
    const/4 v14, 0x6

    if-ne v7, v14, :cond_2e

    const/4 v7, 0x0

    const/4 v10, 0x1

    :goto_25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v10, v14, :cond_28

    move-object/from16 v14, v37

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    cmpl-float v23, v23, v24

    if-lez v23, :cond_2d

    move v7, v10

    :cond_2d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v37, v14

    goto :goto_25

    :cond_2e
    move-object/from16 v14, v37

    const/4 v10, 0x7

    if-ne v7, v10, :cond_30

    move-object/from16 v37, v13

    const/4 v7, 0x0

    const/4 v10, 0x1

    :goto_26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_29

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    cmpg-float v13, v13, v23

    if-gez v13, :cond_2f

    move v7, v10

    :cond_2f
    add-int/lit8 v10, v10, 0x1

    goto :goto_26

    :cond_30
    move-object/from16 v37, v13

    const/16 v13, 0x8

    if-ne v7, v13, :cond_32

    const/4 v7, 0x0

    const/4 v10, 0x1

    :goto_27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_29

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    cmpl-float v13, v13, v23

    if-lez v13, :cond_31

    move v7, v10

    :cond_31
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    :cond_32
    const/16 v10, 0x9

    if-ne v7, v10, :cond_34

    const/4 v7, 0x0

    const/4 v13, 0x1

    :goto_28
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-le v13, v10, :cond_29

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    cmpg-float v10, v10, v23

    if-gez v10, :cond_33

    move v7, v13

    :cond_33
    add-int/lit8 v13, v13, 0x1

    goto :goto_28

    :cond_34
    const/4 v13, 0x0

    :goto_29
    add-int v7, v0, v2

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    cmpl-float v10, v10, v16

    if-lez v10, :cond_3e

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$12;

    move/from16 v42, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v43, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v44, v0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v27, -0x1

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v23, v10

    move-object/from16 v24, p0

    move/from16 v28, v7

    move/from16 v29, v36

    move/from16 v30, v35

    move/from16 v31, v1

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int/2addr v7, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$13;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v10, 0x447a0000    # 1000.0f

    cmpl-float v4, v4, v10

    if-ltz v4, :cond_35

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move-object/from16 v45, v12

    const/4 v12, 0x1

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v10, 0xa

    goto :goto_2a

    :cond_35
    move-object/from16 v45, v12

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/16 v10, 0xa

    invoke-static {v4, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    :goto_2a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v27, -0x1

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v23, v0

    move-object/from16 v24, p0

    move/from16 v28, v7

    move/from16 v29, v36

    move/from16 v30, v35

    move/from16 v31, v1

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int/2addr v7, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$14;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v10

    if-gez v12, :cond_36

    const/16 v12, 0x64

    goto :goto_2b

    :cond_36
    const/16 v12, 0xa

    :goto_2b
    invoke-static {v4, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v27, -0x1

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v23, v0

    move-object/from16 v24, p0

    move/from16 v28, v7

    move/from16 v29, v36

    move/from16 v30, v35

    move/from16 v31, v1

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int v28, v7, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$15;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpg-float v7, v7, v10

    if-gez v7, :cond_37

    const/16 v7, 0x64

    goto :goto_2c

    :cond_37
    const/16 v7, 0xa

    :goto_2c
    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v27, -0x1

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v32

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x1

    move-object/from16 v23, v0

    move-object/from16 v24, p0

    move/from16 v29, v36

    move/from16 v30, v35

    move/from16 v31, v1

    invoke-direct/range {v23 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;IIIIIIFIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    const/4 v0, 0x0

    :goto_2d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v0, v2, :cond_38

    invoke-interface {v5, v0, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_38
    const/4 v0, 0x0

    :goto_2e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_3a

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v2, v4, :cond_39

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_39

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_39

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v7

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v7, v10

    float-to-int v7, v7

    add-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_39
    const/high16 v10, 0x42c80000    # 100.0f

    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_3a
    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_30
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v4

    if-ge v2, v4, :cond_3c

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v4, v7, :cond_3b

    add-int/lit8 v0, v0, 0x1

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_3c
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$16;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object v7, v2

    move-object/from16 v23, v5

    move-object v5, v8

    move-object/from16 v8, p0

    move-object/from16 v24, v9

    const/16 v18, 0x9

    move-object v9, v4

    move/from16 v22, v10

    const/4 v4, 0x7

    move v10, v12

    move-object v12, v11

    const/16 v25, 0x6

    move/from16 v11, v44

    move-object v4, v12

    move-object/from16 v46, v45

    const/16 v27, 0x4

    move/from16 v12, v36

    move-object/from16 v21, v5

    move v5, v13

    move-object/from16 v47, v37

    const/16 v28, 0x8

    const/16 v29, 0x5

    move/from16 v13, v43

    move-object/from16 v38, v4

    move-object v4, v14

    move/from16 v17, v28

    const/16 v28, 0x64

    const/16 v30, 0x2

    move v14, v1

    move-object/from16 v31, v15

    move/from16 v15, v19

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    :cond_3d
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v36, v36, v0

    goto :goto_31

    :cond_3e
    move/from16 v44, v0

    move/from16 v43, v2

    move/from16 v42, v4

    move-object/from16 v23, v5

    move-object/from16 v21, v8

    move-object/from16 v24, v9

    move-object/from16 v38, v11

    move-object/from16 v46, v12

    move v5, v13

    move-object v4, v14

    move-object/from16 v31, v15

    move-object/from16 v47, v37

    const/4 v2, 0x1

    const/16 v17, 0x8

    const/16 v18, 0x9

    const/high16 v22, 0x42c80000    # 100.0f

    const/16 v25, 0x6

    const/16 v27, 0x4

    const/16 v28, 0x64

    const/16 v29, 0x5

    const/16 v30, 0x2

    :goto_31
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, v38

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v7, v21

    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v8, v47

    invoke-interface {v8, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v9, v46

    invoke-interface {v9, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v11, v0

    move-object/from16 v37, v4

    move-object v13, v8

    move-object v12, v9

    move/from16 v10, v22

    move-object/from16 v5, v23

    move-object/from16 v9, v24

    move-object/from16 v15, v31

    move/from16 v4, v42

    move/from16 v2, v43

    move/from16 v0, v44

    move-object v8, v7

    goto/16 :goto_1a

    :cond_3f
    move/from16 v42, v4

    move-object/from16 v23, v5

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->clear()V

    move/from16 v0, v36

    :goto_32
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v40

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v4, v42

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v4, v0}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$17;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ProducedGoods"

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object/from16 v23, v1

    move-object/from16 v24, p0

    invoke-direct/range {v23 .. v29}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v20

    move/from16 v3, v40

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->lTime2:J

    return-void
.end method
