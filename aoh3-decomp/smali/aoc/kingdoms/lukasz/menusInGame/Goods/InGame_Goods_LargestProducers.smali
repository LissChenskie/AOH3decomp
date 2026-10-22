.class public Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Goods_LargestProducers.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static RESOURCE_ID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 42

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

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

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v3, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v7, v7

    const/high16 v8, 0x3fa00000    # 1.25f

    mul-float/2addr v7, v8

    float-to-int v15, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x3

    add-int v26, v7, v8

    mul-int/lit8 v7, v0, 0x2

    sub-int v14, v4, v7

    sub-int v7, v14, v15

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v8

    sub-int v8, v7, v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x6

    sub-int v13, v8, v9

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v8

    sub-int v12, v7, v8

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sput-boolean v11, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->inGoods:Z

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$1;

    sget-object v16, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RESOURCE_PRODUCTION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Civilizations"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v7, v7

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v7, v8

    float-to-int v8, v7

    const/16 v19, 0x1

    move-object v7, v9

    move/from16 v20, v8

    move-object/from16 v8, p0

    move/from16 v27, v3

    move-object v3, v9

    move-object/from16 v9, v16

    move-object/from16 v28, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move/from16 v29, v1

    move v1, v12

    move v12, v0

    move/from16 v30, v13

    move v13, v2

    move/from16 v31, v15

    move/from16 v15, v20

    move/from16 v16, v19

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/16 v32, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v2, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$2;

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Name"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x3

    add-int v15, v31, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int v16, v7, v8

    move-object v7, v3

    move-object/from16 v8, p0

    move v13, v5

    move v14, v2

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;ZZLjava/lang/String;IIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v5, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$3;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Provinces"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    int-to-float v1, v1

    const/high16 v33, 0x3e800000    # 0.25f

    mul-float v7, v1, v33

    float-to-int v15, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int v16, v7, v8

    move-object v7, v3

    move-object/from16 v8, p0

    move v13, v5

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;ZZLjava/lang/String;IIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v5, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$4;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Economy"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v34, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v34

    float-to-int v1, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int v16, v7, v8

    move-object v7, v3

    move-object/from16 v8, p0

    move v13, v5

    move v15, v1

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;ZZLjava/lang/String;IIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v5, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$5;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "ProductionEfficiency"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int v16, v7, v8

    move-object v7, v3

    move-object/from16 v8, p0

    move v13, v5

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;ZZLjava/lang/String;IIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int v13, v5, v1

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$6;

    const/4 v9, 0x1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "LargestProducer"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sub-int v3, v4, v13

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v15, v3, v5

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int v16, v3, v5

    move-object v7, v1

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;ZZLjava/lang/String;IIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v29

    add-int/2addr v2, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v11, v7, :cond_0

    move-object/from16 v7, v28

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    const/high16 v28, 0x42c80000    # 100.0f

    if-ge v11, v7, :cond_2

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->RESOURCE_ID:I

    if-ne v7, v8, :cond_1

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-lez v7, :cond_1

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v9

    mul-float v9, v9, v28

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v9

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v15, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v9

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v14, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ltz v7, :cond_4

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v15, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v14, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_4
    move/from16 v7, v32

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    const/4 v13, 0x0

    :goto_4
    if-lez v8, :cond_6

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_5

    move v13, v8

    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_6
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$7;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v35, v7, 0x1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->RESOURCE_ID:I

    move-object v7, v12

    move-object/from16 v8, p0

    move v11, v0

    move/from16 v36, v4

    move-object v4, v12

    move v12, v2

    move-object/from16 v37, v1

    move v1, v13

    move/from16 v13, v31

    move-object/from16 v38, v3

    move-object v3, v14

    move/from16 v14, v26

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v7

    add-int/2addr v4, v0

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$8;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v20, -0x1

    move/from16 v14, v30

    int-to-float v8, v14

    mul-float v10, v8, v33

    float-to-int v10, v10

    move-object/from16 v16, v7

    move-object/from16 v17, p0

    move/from16 v21, v4

    move/from16 v22, v2

    move/from16 v23, v10

    move/from16 v24, v26

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v11

    add-int/2addr v4, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$9;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-float v11, v8, v34

    float-to-int v11, v11

    move-object/from16 v16, v7

    move/from16 v21, v4

    move/from16 v23, v11

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v12

    add-int/2addr v4, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$10;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    mul-float v16, v16, v28

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    div-float v13, v16, v13

    move/from16 v39, v0

    const/16 v0, 0xa

    invoke-static {v13, v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "%"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    move-object/from16 v16, v7

    move-object/from16 v17, p0

    move/from16 v21, v4

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v7

    add-int/2addr v4, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$11;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v13, v38

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v28

    move/from16 v38, v14

    const/16 v14, 0xa

    invoke-static {v11, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " / "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v11, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->RESOURCE_ID:I

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v28

    const/16 v14, 0xa

    invoke-static {v11, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->RESOURCE_ID:I

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v21, -0x1

    move-object/from16 v16, v0

    move/from16 v22, v4

    move/from16 v23, v2

    move/from16 v24, v10

    move/from16 v25, v26

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v7

    add-int/2addr v4, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$12;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    sget-object v10, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->RESOURCE_ID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float v9, v9, v28

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    move-object/from16 v40, v13

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    double-to-float v9, v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->RESOURCE_ID:I

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v8, v7

    float-to-int v7, v8

    move-object/from16 v16, v0

    move/from16 v22, v4

    move/from16 v24, v7

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v7

    add-int/2addr v0, v4

    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$13;

    move-object/from16 v14, v37

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v13, 0x1

    move-object v8, v4

    move-object/from16 v9, p0

    move v11, v0

    move v12, v2

    move-object/from16 v7, v40

    invoke-direct/range {v8 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;IIIZ)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v10, -0x1

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    add-int/2addr v11, v2

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v11

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v16, 0x2

    add-int v16, v11, v16

    move-object v11, v7

    move-object v7, v4

    move-object/from16 v41, v11

    move v11, v0

    move-object v0, v14

    move/from16 v14, v16

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v4, v26, v29

    add-int/2addr v2, v4

    move-object/from16 v4, v41

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v15, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v1, v0

    move-object v14, v3

    move-object v3, v4

    move/from16 v7, v35

    move/from16 v4, v36

    move/from16 v30, v38

    move/from16 v0, v39

    goto/16 :goto_3

    :cond_7
    move/from16 v36, v4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v0, :cond_9

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_8

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_9
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v27

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v4, v36

    const/4 v9, 0x0

    invoke-direct {v0, v9, v9, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$14;

    const-string v12, ""

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

    invoke-direct/range {v10 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;Ljava/lang/String;Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v4, 0x2

    sub-int v2, v0, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v27

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->drawScrollPositionAlways:Z

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->getPosX()I

    move-result v0

    add-int v1, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->getPosY()I

    move-result v0

    add-int v2, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->lTime2:J

    return-void
.end method

.method public updateLanguage()V
    .locals 4

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "LargestGoodsProducers"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->RESOURCE_ID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
