.class public Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_RightGoods.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iActiveResID:I = -0x1

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 36

    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v15, v1, v14

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v16, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v3, v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_0

    :cond_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_0
    move/from16 v18, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v14, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v11, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v14, v1

    int-to-float v1, v1

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v1, v4

    float-to-int v10, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v14, v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v9, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v14, v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x4

    mul-int/2addr v5, v8

    sub-int/2addr v1, v5

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v7, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v14, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v2, v8

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v6, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v14, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v2, v8

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v5, v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v19, v11

    move/from16 v21, v10

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v8, v1, :cond_2

    sget-object v11, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v11

    if-ge v10, v11, :cond_1

    sget-object v10, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    sget v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v1, v8, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    move v1, v11

    :goto_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v8

    if-ge v1, v8, :cond_5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v8

    if-gez v8, :cond_4

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v8

    if-ltz v8, :cond_4

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v8

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v11

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v22, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v8, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    const/16 v22, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-ltz v1, :cond_a

    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v8, v8, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    if-ltz v8, :cond_8

    const/4 v8, 0x1

    :goto_5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v11

    if-ge v8, v11, :cond_7

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    move/from16 v22, v5

    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    move/from16 v25, v6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v5, v5, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v11, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    goto :goto_6

    :cond_6
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v22

    move/from16 v6, v25

    goto :goto_5

    :cond_7
    move/from16 v22, v5

    move/from16 v25, v6

    const/4 v5, 0x1

    :goto_6
    if-eqz v5, :cond_9

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    move/from16 v22, v5

    move/from16 v25, v6

    :cond_9
    :goto_7
    add-int/lit8 v1, v1, -0x1

    move/from16 v5, v22

    move/from16 v6, v25

    goto :goto_4

    :cond_a
    move/from16 v22, v5

    move/from16 v25, v6

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$1;

    invoke-direct {v8, v12}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    :goto_8
    if-ltz v1, :cond_c

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3a83126f    # 0.001f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v5, v6, v11}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    :cond_b
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_c
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    const/4 v11, 0x2

    mul-int/2addr v1, v11

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v5

    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$2;

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v17, v5

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v24, v24, 0x2

    sub-int v24, v1, v24

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v26, v26, 0x2

    sub-int v26, v1, v26

    const/16 v27, 0x0

    move-object v1, v6

    move-object/from16 v28, v2

    move-object/from16 v2, p0

    move-object/from16 v29, v4

    move v4, v5

    move/from16 v5, v24

    move-object v11, v6

    move/from16 v24, v25

    move/from16 v6, v26

    move/from16 v26, v7

    move-object v7, v8

    move-object/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v20, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int v23, v1, v2

    sub-int v0, v14, v0

    sub-int v0, v0, v23

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v11

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x3

    mul-int/2addr v2, v8

    add-int/2addr v1, v2

    add-int v25, v17, v1

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$3;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "LargestGoodsProducers"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v30

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v5, v23

    move/from16 v6, v17

    move-object/from16 v33, v7

    move v7, v0

    move/from16 v8, v27

    move/from16 v27, v9

    move/from16 v9, v30

    move/from16 v30, v10

    move/from16 v10, v31

    move v12, v11

    move/from16 v11, v32

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;Ljava/lang/String;IIIIIIIZ)V

    move-object/from16 v1, v33

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v7, v17, v1

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Resources"

    invoke-virtual {v2, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v20

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v6, v23

    move v8, v0

    move-object v0, v9

    move/from16 v9, v17

    move-object/from16 v34, v10

    move/from16 v10, v20

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$5;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I

    if-eqz v1, :cond_e

    if-ne v1, v12, :cond_d

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    goto :goto_a

    :cond_e
    :goto_9
    move v3, v12

    :goto_a
    if-ne v1, v12, :cond_f

    move v4, v12

    goto :goto_b

    :cond_f
    const/4 v4, 0x0

    :goto_b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Name"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v10, v1, v2

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v7, v17

    move/from16 v8, v25

    move/from16 v9, v19

    move-object v12, v11

    move/from16 v11, v20

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int v17, v17, v1

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$6;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I

    const/4 v11, 0x2

    const/4 v10, 0x3

    if-eq v1, v11, :cond_11

    if-ne v1, v10, :cond_10

    goto :goto_c

    :cond_10
    const/4 v3, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    const/4 v3, 0x1

    :goto_d
    if-ne v1, v10, :cond_12

    const/4 v4, 0x1

    goto :goto_e

    :cond_12
    const/4 v4, 0x0

    :goto_e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Provinces"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v19, v1, v2

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v7, v17

    move/from16 v8, v25

    move/from16 v9, v21

    move/from16 v10, v19

    move/from16 v19, v15

    move v15, v11

    move/from16 v11, v20

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int v7, v17, v1

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$7;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I

    const/4 v11, 0x5

    const/4 v10, 0x4

    if-eq v1, v10, :cond_14

    if-ne v1, v11, :cond_13

    goto :goto_f

    :cond_13
    const/4 v3, 0x0

    goto :goto_10

    :cond_14
    :goto_f
    const/4 v3, 0x1

    :goto_10
    if-ne v1, v11, :cond_15

    const/4 v4, 0x1

    goto :goto_11

    :cond_15
    const/4 v4, 0x0

    :goto_11
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Price"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v17, v1, v2

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v8, v25

    move/from16 v9, v27

    move/from16 v10, v17

    move/from16 v11, v20

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v25, v25, v1

    :goto_12
    :try_start_0
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_28

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I

    if-nez v1, :cond_19

    const/4 v1, 0x0

    const/4 v11, 0x1

    :goto_13
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_17

    move-object/from16 v12, v29

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v1, v11

    :cond_16
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v29, v12

    goto :goto_13

    :cond_17
    move-object/from16 v12, v29

    :cond_18
    move v7, v1

    move-object/from16 v10, v28

    :goto_14
    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v11, 0x3

    goto/16 :goto_1a

    :cond_19
    move-object/from16 v12, v29

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x0

    const/4 v11, 0x1

    :goto_15
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_18

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v1, v11

    :cond_1a
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_1b
    if-ne v1, v15, :cond_1e

    const/4 v1, 0x0

    const/4 v11, 0x1

    :goto_16
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_1d

    move-object/from16 v10, v28

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_1c

    move v1, v11

    :cond_1c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v28, v10

    goto :goto_16

    :cond_1d
    move-object/from16 v10, v28

    move v7, v1

    goto :goto_14

    :cond_1e
    move-object/from16 v10, v28

    const/4 v11, 0x3

    if-ne v1, v11, :cond_21

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_17
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_20

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_1f

    move v2, v1

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_20
    move v7, v2

    const/4 v8, 0x5

    const/4 v9, 0x4

    goto :goto_1a

    :cond_21
    const/4 v9, 0x4

    if-ne v1, v9, :cond_24

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_18
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_23

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result v3

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_22

    move v2, v1

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_23
    move v7, v2

    const/4 v8, 0x5

    goto :goto_1a

    :cond_24
    const/4 v8, 0x5

    if-ne v1, v8, :cond_27

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_19
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_26

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result v3

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_25

    move v2, v1

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_26
    move v7, v2

    goto :goto_1a

    :cond_27
    const/4 v7, 0x0

    :goto_1a
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v17, v1, v2

    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$8;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v6

    move-object/from16 v2, p0

    move/from16 v5, v17

    move-object v15, v6

    move/from16 v6, v25

    move v11, v7

    move/from16 v7, v26

    move/from16 v21, v8

    move/from16 v8, v18

    move/from16 v27, v9

    move/from16 v9, v30

    move/from16 v28, v14

    move-object v14, v10

    move/from16 v10, v20

    :try_start_1
    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v17, v17, v1

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v5, -0x1

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v6, v17

    move/from16 v7, v25

    move/from16 v8, v24

    move/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;Ljava/lang/String;IIIIII)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v6, v17, v1

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$10;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v7, v25

    move/from16 v8, v22

    move/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;Ljava/lang/String;IIIIII)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int v25, v25, v1

    invoke-interface {v12, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v14, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v29, v12

    const/4 v15, 0x2

    move/from16 v35, v28

    move-object/from16 v28, v14

    move/from16 v14, v35

    goto/16 :goto_12

    :catch_0
    move-exception v0

    goto :goto_1b

    :cond_28
    move/from16 v28, v14

    goto :goto_1c

    :catch_1
    move-exception v0

    move/from16 v28, v14

    :goto_1b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1c
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_1d
    if-ge v11, v0, :cond_2a

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_29

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    :cond_29
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d

    :cond_2a
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v16

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v4, 0x3

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v7, v28

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v7, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$11;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v2, v34

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;Ljava/lang/String;ZZI)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move-object v2, v8

    move/from16 v3, v19

    move/from16 v4, v16

    move v5, v7

    move v6, v0

    move-object v7, v13

    move v8, v9

    move v9, v10

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    iput v0, v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->scrollExtraPosX:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getPosX()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getPosX()I

    move-result v0

    add-int v1, v0, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getPosY()I

    move-result v0

    add-int v2, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getPosX()I

    move-result v1

    add-int v2, v1, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->lTime2:J

    return-void
.end method
