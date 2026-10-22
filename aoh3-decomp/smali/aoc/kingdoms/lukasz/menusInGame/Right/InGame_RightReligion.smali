.class public Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_RightReligion.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iReligionID:I = -0x1

.field public static iSortID:I = 0x2

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 44

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

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_0

    :cond_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_0
    move/from16 v17, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v14, v1

    int-to-float v1, v1

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v2

    float-to-int v11, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v14, v1

    int-to-float v1, v1

    const v3, 0x3f266666    # 0.65f

    mul-float/2addr v1, v3

    float-to-int v10, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v14, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x3

    mul-int/2addr v4, v9

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v8, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v14, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v2, v9

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v7, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v14, v1

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v6, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v14, v1

    int-to-float v1, v1

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v3

    float-to-int v5, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v14, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v9

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v4, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v14, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v2, v9

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v3, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/lit8 v27, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    move/from16 v18, v10

    const-string v10, "Population"

    move-object/from16 v19, v10

    const/4 v10, 0x0

    sget-object v10, Lcom/badlogic/gdx/assets/loaders/Wkvw/PZBvyl;->tngfFCgAJwd:Ljava/lang/String;

    move-object/from16 v20, v10

    const-string v10, ""

    move/from16 v21, v8

    const/4 v8, 0x1

    const/4 v2, 0x0

    if-gez v1, :cond_21

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v23, v1, v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionsSize()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v4

    move-object/from16 v28, v10

    int-to-long v9, v4

    add-long v24, v24, v9

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    move-object/from16 v28, v10

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v10, v28

    const/4 v9, 0x3

    goto :goto_2

    :cond_3
    move-object/from16 v28, v10

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$1;

    invoke-direct {v9, v12}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    :goto_4
    if-ltz v1, :cond_5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float v3, v3

    const v4, 0x3a83126f    # 0.001f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    move-object/from16 v25, v9

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v8, v8

    invoke-direct {v3, v4, v8}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    move-object/from16 v8, v25

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    goto :goto_5

    :cond_4
    move-object v8, v9

    :goto_5
    add-int/lit8 v1, v1, -0x1

    move-object v9, v8

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    move-object v8, v9

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    const/4 v3, 0x3

    mul-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$2;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v10, v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v3, v4

    sub-int v22, v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v3, v4

    sub-int v25, v1, v3

    const/16 v29, 0x0

    move-object v1, v9

    move v3, v4

    move v4, v2

    move-object/from16 v2, p0

    move v12, v3

    move/from16 v3, v23

    move v4, v10

    move-object v10, v5

    move/from16 v5, v22

    move-object/from16 v31, v6

    move/from16 v6, v25

    move/from16 v32, v7

    move-object v7, v8

    move/from16 v33, v21

    const/4 v12, 0x1

    move-object/from16 v8, v29

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    add-int v21, v1, v2

    sub-int v0, v14, v0

    sub-int v0, v0, v21

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v9, 0x0

    add-int v22, v9, v1

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v7, v31

    :try_start_1
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v5, v9

    move/from16 v24, v5

    :goto_6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v4, 0x3

    if-ge v5, v4, :cond_8

    move v3, v9

    move v1, v12

    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    cmp-long v2, v29, v34

    if-gez v2, :cond_6

    move v3, v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v12, v28

    :try_start_2
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v28
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v29, 0x0

    move-object v1, v2

    move-object/from16 v36, v2

    move-object/from16 v2, p0

    move/from16 v37, v3

    move-object v3, v4

    const/16 v25, 0x3

    move v4, v9

    move/from16 v31, v5

    move/from16 v5, v21

    move-object v9, v6

    move/from16 v6, v24

    move-object/from16 v34, v7

    move v7, v0

    move-object/from16 v38, v8

    move/from16 v8, v17

    move/from16 v35, v0

    move-object v0, v9

    const/16 v30, 0x0

    move/from16 v43, v25

    move-object/from16 v25, v12

    move/from16 v12, v43

    move/from16 v9, v28

    move-object/from16 v39, v10

    move/from16 v41, v15

    move-object/from16 v40, v19

    move-object/from16 v12, v20

    move-object/from16 v15, v25

    move/from16 v10, v29

    :try_start_4
    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;Ljava/lang/String;IIIIIII)V

    move-object/from16 v1, v36

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    add-int v24, v24, v1

    move/from16 v3, v37

    move-object/from16 v1, v38

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v5, v31, 0x1

    move-object v6, v0

    move-object v8, v1

    move-object/from16 v20, v12

    move-object/from16 v28, v15

    move/from16 v9, v30

    move-object/from16 v7, v34

    move/from16 v0, v35

    move-object/from16 v10, v39

    move-object/from16 v19, v40

    move/from16 v15, v41

    const/4 v12, 0x1

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v34, v7

    move-object/from16 v39, v10

    move/from16 v41, v15

    move-object/from16 v40, v19

    const/16 v30, 0x0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v34, v7

    move/from16 v30, v9

    move-object/from16 v39, v10

    move/from16 v41, v15

    move-object/from16 v40, v19

    :goto_8
    move-object v15, v12

    move-object/from16 v12, v20

    goto :goto_9

    :cond_8
    move-object/from16 v34, v7

    move/from16 v30, v9

    move-object/from16 v39, v10

    move/from16 v41, v15

    move-object/from16 v40, v19

    move-object/from16 v12, v20

    move-object/from16 v15, v28

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v34, v7

    move/from16 v30, v9

    move-object/from16 v39, v10

    move/from16 v41, v15

    move-object/from16 v40, v19

    move-object/from16 v12, v20

    move-object/from16 v15, v28

    goto :goto_9

    :catch_4
    move-exception v0

    move/from16 v30, v9

    move-object/from16 v39, v10

    move/from16 v41, v15

    move-object/from16 v40, v19

    move-object/from16 v12, v20

    move-object/from16 v15, v28

    move-object/from16 v34, v31

    :goto_9
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_a
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$4;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    if-ne v1, v2, :cond_9

    goto :goto_b

    :cond_9
    move/from16 v3, v30

    goto :goto_c

    :cond_a
    :goto_b
    move v3, v2

    :goto_c
    if-ne v1, v2, :cond_b

    const/4 v4, 0x1

    goto :goto_d

    :cond_b
    move/from16 v4, v30

    :goto_d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v10, v1, v2

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v7, v23

    move/from16 v8, v22

    move v9, v11

    move v11, v12

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int v7, v23, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$5;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    goto :goto_e

    :cond_c
    move/from16 v3, v30

    goto :goto_f

    :cond_d
    const/4 v2, 0x3

    :goto_e
    const/4 v3, 0x1

    :goto_f
    if-ne v1, v2, :cond_e

    const/4 v4, 0x1

    goto :goto_10

    :cond_e
    move/from16 v4, v30

    :goto_10
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v11, v40

    invoke-virtual {v1, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v10, v1, v2

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v8, v22

    move/from16 v9, v18

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v22, v22, v0

    move/from16 v0, v22

    :goto_11
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_20

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    if-nez v1, :cond_12

    move/from16 v2, v30

    const/4 v8, 0x1

    :goto_12
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_10

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    move-object/from16 v11, v34

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v2, v8

    :cond_f
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v34, v11

    goto :goto_12

    :cond_10
    move-object/from16 v11, v34

    :cond_11
    move v10, v2

    move-object/from16 v12, v39

    goto/16 :goto_16

    :cond_12
    move-object/from16 v11, v34

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    move/from16 v2, v30

    const/4 v8, 0x1

    :goto_13
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_11

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v2, v8

    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_14
    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    move/from16 v2, v30

    const/4 v8, 0x1

    :goto_14
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v12, v39

    if-ge v8, v1, :cond_18

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_15

    move v2, v8

    :cond_15
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v39, v12

    goto :goto_14

    :cond_16
    move-object/from16 v12, v39

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    move/from16 v2, v30

    const/4 v8, 0x1

    :goto_15
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_18

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_17

    move v2, v8

    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_18
    move v10, v2

    goto :goto_16

    :cond_19
    move/from16 v10, v30

    :goto_16
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v8, v1, v2

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$6;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, v9

    move-object/from16 v2, p0

    move v4, v8

    move v5, v0

    move/from16 v6, v33

    move/from16 v7, v26

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;IIIII)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    add-int v22, v8, v1

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$7;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v5, -0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v6, v22

    move v7, v0

    move/from16 v8, v32

    move-object/from16 v29, v15

    move-object v15, v9

    move/from16 v9, v27

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;Ljava/lang/String;IIIIII)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move/from16 v2, v30

    :goto_17
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_1a

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_1a
    move/from16 v2, v30

    :goto_18
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_1c

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_1b

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1b

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_1c
    move/from16 v15, v30

    const/4 v8, 0x1

    :goto_19
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v8, v2, :cond_1e

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_1d

    move v15, v8

    :cond_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_1e
    if-lez v15, :cond_1f

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$8;

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/lit8 v5, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v0

    add-int v7, v1, v27

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v6, v22

    move/from16 v8, v32

    move/from16 v31, v14

    move-object v14, v9

    move/from16 v9, v27

    move-object/from16 v39, v12

    move v12, v10

    move v10, v15

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_1f
    move-object/from16 v39, v12

    move/from16 v31, v14

    move v12, v10

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    const-string v19, "-"

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v21, v2, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v0

    add-int v23, v2, v27

    move-object/from16 v18, v1

    move/from16 v24, v32

    move/from16 v25, v27

    invoke-direct/range {v18 .. v25}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1a
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v1, v26, v1

    add-int/2addr v0, v1

    invoke-interface {v11, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v1, v39

    invoke-interface {v1, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v34, v11

    move-object/from16 v15, v29

    move/from16 v14, v31

    goto/16 :goto_11

    :cond_20
    move/from16 v31, v14

    goto/16 :goto_2a

    :cond_21
    move/from16 v30, v2

    move-object/from16 v29, v10

    move/from16 v31, v14

    move/from16 v41, v15

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v7, v1, v2

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$9;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    sub-int v14, v31, v7

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v14, v1

    move-object v1, v9

    move-object/from16 v2, p0

    move v15, v3

    move v3, v10

    move/from16 v18, v4

    move v4, v7

    move/from16 v19, v5

    move v5, v8

    move/from16 v20, v6

    move v6, v14

    move/from16 v7, v26

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;IIIII)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    add-int v14, v8, v1

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$10;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RELIGION_CIVS_RIGHT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Civilizations"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v1, v0, 0x2

    sub-int v8, v31, v1

    div-int/lit8 v9, v31, 0x2

    const/16 v21, 0x1

    move-object v1, v10

    move-object/from16 v2, p0

    move v6, v0

    move v7, v14

    move-object v0, v10

    move/from16 v10, v21

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int/2addr v14, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$11;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    if-eqz v2, :cond_23

    if-ne v2, v1, :cond_22

    goto :goto_1b

    :cond_22
    move/from16 v3, v30

    goto :goto_1c

    :cond_23
    :goto_1b
    move v3, v1

    :goto_1c
    if-ne v2, v1, :cond_24

    const/4 v4, 0x1

    goto :goto_1d

    :cond_24
    move/from16 v4, v30

    :goto_1d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v12, v1, v2

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v1, v10

    move-object/from16 v2, p0

    move v7, v0

    move v8, v14

    move/from16 v9, v20

    move-object/from16 v42, v10

    move v10, v12

    move-object v12, v11

    move/from16 v11, v21

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;ZZLjava/lang/String;IIIIII)V

    move-object/from16 v1, v42

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int v7, v0, v1

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$12;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_26

    const/4 v2, 0x3

    if-ne v1, v2, :cond_25

    goto :goto_1e

    :cond_25
    move/from16 v3, v30

    goto :goto_1f

    :cond_26
    const/4 v2, 0x3

    :goto_1e
    const/4 v3, 0x1

    :goto_1f
    if-ne v1, v2, :cond_27

    const/4 v4, 0x1

    goto :goto_20

    :cond_27
    move/from16 v4, v30

    :goto_20
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v10, v1, v2

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v1, v0

    move-object/from16 v2, p0

    move v8, v14

    move/from16 v9, v19

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v6, v14, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move/from16 v2, v30

    :goto_21
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v2, v1, :cond_28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_28
    move/from16 v2, v30

    :goto_22
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v2, v1, :cond_2a

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_29

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    if-ne v1, v3, :cond_29

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_2a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_23
    if-ltz v1, :cond_2c

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_2b

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v11, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    :cond_2c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_36

    move v12, v6

    :goto_24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_37

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    if-nez v1, :cond_2f

    move/from16 v2, v30

    const/4 v8, 0x1

    :goto_25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_2e

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    move v2, v8

    :cond_2d
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_2e
    move v14, v2

    goto/16 :goto_29

    :cond_2f
    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    move/from16 v2, v30

    const/4 v8, 0x1

    :goto_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_2e

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    move v2, v8

    :cond_30
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    :cond_31
    const/4 v2, 0x2

    if-ne v1, v2, :cond_33

    move/from16 v2, v30

    const/4 v8, 0x1

    :goto_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_2e

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v1, v3, :cond_32

    move v2, v8

    :cond_32
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    :cond_33
    const/4 v2, 0x3

    if-ne v1, v2, :cond_35

    move/from16 v2, v30

    const/4 v8, 0x1

    :goto_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_2e

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v1, v3, :cond_34

    move v2, v8

    :cond_34
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    :cond_35
    move/from16 v14, v30

    :goto_29
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v19, v1, v2

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$13;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/lit8 v5, v1, 0x2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v6, v19

    move v7, v12

    move/from16 v8, v18

    move/from16 v9, v17

    move-object/from16 v21, v0

    move-object v0, v10

    move/from16 v10, v20

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v6, v19, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$14;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v10, v29

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v5, -0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move v8, v15

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;Ljava/lang/String;IIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v11, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_24

    :cond_36
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "None"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v4, -0x1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    add-int/2addr v1, v7

    sub-int v7, v31, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    :cond_37
    :goto_2a
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v30

    move v2, v1

    :goto_2b
    if-ge v2, v0, :cond_39

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_38

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_39
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

    move/from16 v3, v30

    move/from16 v7, v31

    invoke-direct {v2, v3, v3, v7, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$15;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Religion"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;Ljava/lang/String;ZZI)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move-object v2, v8

    move/from16 v3, v41

    move/from16 v4, v16

    move v5, v7

    move v6, v0

    move-object v7, v13

    move v8, v9

    move v9, v10

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    iput v0, v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->scrollExtraPosX:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getPosX()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getPosX()I

    move-result v0

    add-int v1, v0, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getPosY()I

    move-result v0

    add-int v2, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getPosX()I

    move-result v1

    add-int v2, v1, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->lTime2:J

    return-void
.end method
