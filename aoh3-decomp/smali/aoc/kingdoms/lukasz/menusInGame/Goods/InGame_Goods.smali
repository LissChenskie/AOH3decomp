.class public Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Goods.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;
    }
.end annotation


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iCivID:I = 0x0

.field public static inGoods:Z = true

.field public static inGoodsView:Z

.field public static lTime:J

.field public static lTime2:J

.field public static sortBy:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 32

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

    sub-int v7, v4, v7

    sub-int/2addr v7, v15

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    sub-int v14, v7, v8

    const/4 v13, 0x1

    sput-boolean v13, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->inGoods:Z

    sput-boolean v13, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->inGoodsView:Z

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$1;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->sortBy:I

    const/4 v11, 0x0

    if-nez v7, :cond_0

    move v9, v13

    goto :goto_0

    :cond_0
    move v9, v11

    :goto_0
    const/4 v10, 0x0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Name"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x3

    add-int v18, v15, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int v19, v7, v8

    const/16 v20, 0x0

    move-object v7, v12

    move-object/from16 v8, p0

    move-object/from16 v11, v16

    move-object v2, v12

    move/from16 v12, v17

    move v13, v5

    move/from16 v27, v14

    move/from16 v14, v20

    move/from16 v28, v15

    move/from16 v15, v18

    move/from16 v16, v19

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;ZZLjava/lang/String;IIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    add-int/2addr v5, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$2;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->sortBy:I

    if-ne v7, v15, :cond_1

    move/from16 v18, v15

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    :goto_1
    const/16 v19, 0x0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Bonus"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    move/from16 v7, v27

    int-to-float v14, v7

    const v7, 0x3f266666    # 0.65f

    mul-float/2addr v7, v14

    float-to-int v13, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int v25, v7, v8

    const/16 v23, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, p0

    move/from16 v22, v5

    move/from16 v24, v13

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;ZZLjava/lang/String;IIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v15

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    add-int v22, v5, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$3;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->sortBy:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    move/from16 v18, v15

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    :goto_2
    const/16 v19, 0x0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "LargestProducer"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    sub-int v5, v4, v22

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v24, v5, v7

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x6

    add-int v25, v5, v7

    const/16 v23, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;ZZLjava/lang/String;IIIII)V

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

    const/4 v5, 0x0

    add-int/2addr v2, v5

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v7, v5

    :goto_3
    sget v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v7, v8, :cond_4

    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->sortBy:I

    if-ne v7, v15, :cond_5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    move v8, v5

    :goto_4
    if-ge v8, v7, :cond_5

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getBonusText(I)Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;->bonusText:Ljava/lang/String;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_d

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->sortBy:I

    if-nez v7, :cond_7

    move v7, v5

    move v8, v15

    :goto_6
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_b

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v7, v8

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    if-ne v7, v15, :cond_9

    move v7, v5

    move v8, v15

    :goto_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_b

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v7, v8

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    move v7, v5

    move v8, v15

    :goto_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_b

    sget-object v9, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v7, v8

    :cond_a
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    goto :goto_8

    :cond_b
    move v5, v7

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$4;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v7, v10

    move-object/from16 v8, p0

    move-object v15, v10

    move/from16 v10, v16

    move/from16 v27, v4

    move-object v4, v11

    move v11, v0

    move/from16 v29, v3

    move-object v3, v12

    move v12, v2

    move/from16 v30, v13

    move/from16 v13, v28

    move/from16 v31, v14

    move/from16 v14, v26

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;Ljava/lang/String;IIIII)V

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

    add-int/2addr v7, v0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getBonusText(I)Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    move-result-object v8

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon3;

    iget-object v10, v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;->bonusText:Ljava/lang/String;

    iget-object v11, v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;->bonusText2:Ljava/lang/String;

    iget v8, v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;->bonusIMGID:I

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move/from16 v19, v8

    move/from16 v20, v7

    move/from16 v21, v2

    move/from16 v22, v30

    move/from16 v23, v26

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon3;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$5;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer_Amount:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    const/16 v13, 0xa

    invoke-static {v11, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " / "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v12

    invoke-static {v11, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v21, -0x1

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float v14, v31, v9

    float-to-int v9, v14

    move-object/from16 v16, v8

    move-object/from16 v17, p0

    move/from16 v22, v7

    move/from16 v23, v2

    move/from16 v24, v9

    move/from16 v25, v26

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;Ljava/lang/String;IIIIIII)V

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

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$6;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer_Amount:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    sget-object v11, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    mul-float/2addr v10, v12

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-static {v10, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    const v9, 0x3dcccccd    # 0.1f

    mul-float v14, v31, v9

    float-to-int v9, v14

    move-object/from16 v16, v8

    move/from16 v22, v7

    move/from16 v24, v9

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;Ljava/lang/String;IIIIIII)V

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

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v8, v9

    add-int v13, v7, v8

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$7;

    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v21, 0x1

    move-object/from16 v16, v7

    move/from16 v19, v13

    move/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;IIIZ)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v12, -0x1

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v8

    add-int/2addr v8, v2

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v14, v8, v9

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v15

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v16, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int v16, v8, v9

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v7, v26, v1

    add-int/2addr v2, v7

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->sortBy:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_c
    move-object v12, v3

    move-object v11, v4

    move v15, v8

    move/from16 v4, v27

    move/from16 v3, v29

    move/from16 v13, v30

    move/from16 v14, v31

    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_d
    move/from16 v29, v3

    move/from16 v27, v4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v0, :cond_f

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

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_e

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

    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_f
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v29

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v4, v27

    const/4 v7, 0x0

    invoke-direct {v0, v7, v7, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$8;

    const-string v10, ""

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

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->title928:I

    move-object v8, v1

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;Ljava/lang/String;Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/4 v2, 0x2

    div-int/2addr v0, v2

    div-int/lit8 v2, v4, 0x2

    sub-int v2, v0, v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v29

    move v10, v7

    move v7, v8

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v10, v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->drawScrollPositionAlways:Z

    return-void
.end method

.method public static getBonusText(I)Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;
    .locals 11

    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MonthlyIncome:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const-string v2, "+"

    const/16 v3, 0x64

    const/4 v4, 0x0

    sget-object v4, Lcom/badlogic/gdx/assets/loaders/Wkvw/PZBvyl;->HbJCNUCnDsZopq:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "MonthlyIncome"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MonthlyIncome:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->TaxEfficiency:F

    cmpl-float v0, v0, v1

    const-string v5, "%"

    if-eqz v0, :cond_1

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "TaxEfficiency"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->TaxEfficiency:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncomeProduction:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "IncomeProduction"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncomeProduction:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ProductionEfficiency:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "ProductionEfficiency"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ProductionEfficiency:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ProvinceMaintenance:F

    cmpl-float v0, v0, v1

    const-string v6, ""

    if-eqz v0, :cond_4

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "ProvinceMaintenance"

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ProvinceMaintenance:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GrowthRate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "GrowthRate"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GrowthRate:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MonthlyLegacy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "MonthlyLegacy"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MonthlyLegacy:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MaxManpower:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "MaximumManpower"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MaxManpower:F

    float-to-int p0, p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_7
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ManpowerRecoverySpeed:F

    cmpl-float v0, v0, v1

    const/high16 v7, 0x42c80000    # 100.0f

    if-eqz v0, :cond_9

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "ManpowerRecoverySpeed"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v9, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v9, v9, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ManpowerRecoverySpeed:F

    cmpl-float v1, v9, v1

    if-lez v1, :cond_8

    goto :goto_0

    :cond_8
    move-object v2, v6

    :goto_0
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ManpowerRecoverySpeed:F

    mul-float/2addr p0, v7

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    invoke-direct {v0, v4, p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_9
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ArmyMaintenance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "ArmyMaintenance"

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ArmyMaintenance:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyMaintenance:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_a
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitmentTime:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "RecruitmentTime"

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitmentTime:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "ArmyRecruitmentCost"

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmyCost:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmyFirstLineCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "FirstLineArmyRecruitmentCost"

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmyFirstLineCost:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_d
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmySecondLineCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "SecondLineArmyRecruitmentCost"

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmySecondLineCost:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ResearchPoints:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "ResearchPerMonth"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ResearchPoints:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_f
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->TechnologyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v7, 0x0

    sget-object v7, Laoc/kingdoms/lukasz/menusScenarioEditor/YGiX/gpVDKipRURuzw;->OSpDusJR:Ljava/lang/String;

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->TechnologyCost:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_10
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ConstructionCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "ConstructionCost"

    invoke-virtual {v2, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ConstructionCost:F

    mul-float/2addr p0, v7

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_11
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->AdministrationBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "AdministrationBuildingsCost"

    invoke-virtual {v2, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->AdministrationBuildingsCost:F

    mul-float/2addr p0, v7

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_12
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MilitaryBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MilitaryBuildingsCost"

    invoke-virtual {v2, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MilitaryBuildingsCost:F

    mul-float/2addr p0, v7

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_13
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->EconomyBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_14

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "EconomyBuildingsCost"

    invoke-virtual {v2, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->EconomyBuildingsCost:F

    mul-float/2addr p0, v7

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_14
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ConstructionTime:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "ConstructionTime"

    invoke-virtual {v2, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ConstructionTime:F

    mul-float/2addr p0, v7

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_15
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->InvestInEconomyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_16

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "InvestInEconomyCost"

    invoke-virtual {v2, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->InvestInEconomyCost:F

    mul-float/2addr p0, v7

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_16
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncreaseManpowerCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "IncreaseManpowerCost"

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncreaseManpowerCost:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralAttack:I

    if-eqz v0, :cond_18

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "GeneralsAttack"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralAttack:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_18
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralDefense:I

    if-eqz v0, :cond_19

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "GeneralsDefense"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralDefense:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_19
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->UnitsAttack:I

    if-eqz v0, :cond_1a

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "UnitsAttack"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->UnitsAttack:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_1a
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->UnitsDefense:I

    if-eqz v0, :cond_1b

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "UnitsDefense"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->UnitsDefense:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_1b
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MaxMorale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1c

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Morale"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MaxMorale:F

    mul-float/2addr p0, v7

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_1c
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ArmyMovementSpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1d

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "ArmyMovementSpeed"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ArmyMovementSpeed:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_1d
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->SiegeEffectiveness:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1e

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "SiegeEffectiveness"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->SiegeEffectiveness:F

    mul-float/2addr p0, v7

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_1e
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ImproveRelationsModifier:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1f

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "ImproveRelationsModifier"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ImproveRelationsModifier:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_1f
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncomeFromVassals:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_20

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "IncomeFromVassals"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncomeFromVassals:F

    mul-float/2addr p0, v7

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->vassal:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_20
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->LoanInterest:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_21

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "LoanInterest"

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->LoanInterest:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_21
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->AggressiveExpansion:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_22

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "AggressiveExpansion"

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->AggressiveExpansion:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->war:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_22
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RevolutionaryRisk:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_23

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "RevolutionaryRisk"

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RevolutionaryRisk:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->revolutionRisk:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_23
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->CoreCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_24

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "CoreConstruction"

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->CoreCost:F

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->core:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_24
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RegimentsLimit:I

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "RegimentsLimit"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RegimentsLimit:I

    int-to-float p0, p0

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    invoke-direct {v0, v3, p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_25
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->BattleWidth:I

    if-eqz v0, :cond_26

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "BattleWidth"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->BattleWidth:I

    int-to-float p0, p0

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-direct {v0, v3, p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_26
    new-instance p0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "None"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->x:I

    invoke-direct {p0, v0, v6, v1}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
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
    .locals 11

    move-object v8, p1

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->lTime:J

    const-wide/16 v6, 0x3c

    add-long/2addr v0, v6

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    const/high16 v9, 0x42700000    # 60.0f

    if-ltz v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->lTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    div-float/2addr v0, v9

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    move v10, v0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v10

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

    mul-float/2addr v10, v4

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

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

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->lTime:J

    add-long/2addr v0, v6

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v9

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v9, v0

    goto :goto_1

    :cond_1
    move v9, p3

    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getPosX()I

    move-result v0

    add-int v1, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getPosY()I

    move-result v0

    add-int v2, v0, v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getPosY()I

    move-result v1

    add-int v3, v1, v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object v0, p0

    move v2, p2

    move v3, v9

    move v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->lTime2:J

    return-void
.end method

.method public updateLanguage()V
    .locals 3

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "LargestGoodsProducers"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
