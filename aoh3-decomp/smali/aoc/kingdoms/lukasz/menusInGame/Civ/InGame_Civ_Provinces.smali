.class public Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Civ_Provinces.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

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

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v1, v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v11, v7, v8

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v7, :cond_0

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-lez v7, :cond_0

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    sput v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    goto :goto_0

    :cond_0
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-gtz v7, :cond_1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    :cond_1
    :goto_0
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v2

    sub-int v7, v4, v7

    int-to-float v7, v7

    const/high16 v23, 0x3e800000    # 0.25f

    mul-float v7, v7, v23

    float-to-int v8, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v2

    sub-int v7, v4, v7

    int-to-float v7, v7

    mul-float v7, v7, v23

    float-to-int v7, v7

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_1
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionsSize()I

    move-result v13

    if-ge v12, v13, :cond_2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_2
    sget v13, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v13

    if-ge v12, v13, :cond_3

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v14

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v14

    move/from16 v35, v3

    int-to-long v2, v14

    add-long v16, v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v10, v13, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v35

    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    move/from16 v35, v3

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    :goto_3
    if-ltz v12, :cond_5

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-float v13, v14

    const v14, 0x3a83126f    # 0.001f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    new-instance v13, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move/from16 v19, v7

    move/from16 v18, v8

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-float v7, v7

    invoke-direct {v13, v14, v7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v2, v13}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    goto :goto_4

    :cond_4
    move/from16 v19, v7

    move/from16 v18, v8

    :goto_4
    add-int/lit8 v12, v12, -0x1

    move/from16 v8, v18

    move/from16 v7, v19

    const/4 v14, 0x1

    goto :goto_3

    :cond_5
    move/from16 v19, v7

    move/from16 v18, v8

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v9

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$2;

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v1, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v9, v8

    sub-int v13, v7, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v9, v8

    sub-int v14, v7, v9

    const/4 v7, 0x0

    move-object v9, v15

    move-object/from16 v10, p0

    const/4 v8, 0x1

    move-object v8, v15

    move-object v15, v2

    move-object/from16 v16, v7

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    add-int/2addr v2, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x2

    mul-int/2addr v7, v9

    add-int v17, v2, v7

    sub-int v2, v4, v0

    sub-int v2, v2, v17

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x3

    mul-int/2addr v9, v15

    add-int/2addr v7, v9

    add-int v36, v1, v7

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$3;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Provinces"

    invoke-virtual {v9, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ": "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v20

    move/from16 v37, v19

    move-object v7, v14

    move v3, v8

    move/from16 v38, v18

    move-object/from16 v8, p0

    move-object/from16 v39, v11

    move/from16 v11, v16

    move-object/from16 v40, v12

    move/from16 v12, v17

    move-object/from16 v41, v13

    move v13, v1

    move-object v3, v14

    move v14, v2

    move/from16 v42, v5

    move v5, v15

    move/from16 v15, v22

    move/from16 v16, v20

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;Ljava/lang/String;Ljava/lang/String;IIIIII)V

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

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int v18, v1, v3

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTotalLoot()F

    move-result v1

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$4;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "TotalLoot"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v8, v40

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v11, v39

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v39, 0x41200000    # 10.0f

    cmpg-float v8, v1, v39

    const/16 v40, 0xa

    const/high16 v43, 0x42c80000    # 100.0f

    if-gez v8, :cond_6

    const/16 v8, 0x64

    goto :goto_5

    :cond_6
    cmpg-float v8, v1, v43

    if-gez v8, :cond_7

    move/from16 v8, v40

    goto :goto_5

    :cond_7
    const/4 v8, 0x1

    :goto_5
    invoke-static {v1, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->loot:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v21

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v19, v2

    move/from16 v20, v22

    invoke-direct/range {v12 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$5;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v7, 0x1

    if-eqz v3, :cond_9

    if-ne v3, v7, :cond_8

    goto :goto_6

    :cond_8
    const/16 v26, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    move/from16 v26, v7

    :goto_7
    if-ne v3, v7, :cond_a

    const/16 v27, 0x1

    goto :goto_8

    :cond_a
    const/16 v27, 0x0

    :goto_8
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Name"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, -0x1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x6

    mul-int/2addr v7, v15

    add-int v33, v3, v7

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v24, v2

    move-object/from16 v25, p0

    move/from16 v30, v1

    move/from16 v31, v36

    move/from16 v32, v38

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$6;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v7, 0x2

    if-eq v3, v7, :cond_c

    if-ne v3, v5, :cond_b

    goto :goto_9

    :cond_b
    const/16 v26, 0x0

    goto :goto_a

    :cond_c
    :goto_9
    const/16 v26, 0x1

    :goto_a
    if-ne v3, v5, :cond_d

    const/16 v27, 0x1

    goto :goto_b

    :cond_d
    const/16 v27, 0x0

    :goto_b
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Income"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, -0x1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v15

    add-int v33, v3, v7

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v24, v2

    move-object/from16 v25, p0

    move/from16 v30, v1

    move/from16 v31, v36

    move/from16 v32, v38

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$7;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v14, 0x4

    const/4 v13, 0x5

    if-eq v3, v14, :cond_f

    if-ne v3, v13, :cond_e

    goto :goto_c

    :cond_e
    const/16 v26, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/16 v26, 0x1

    :goto_d
    if-ne v3, v13, :cond_10

    const/16 v27, 0x1

    goto :goto_e

    :cond_10
    const/16 v27, 0x0

    :goto_e
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Loot"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, -0x1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v15

    add-int v33, v3, v7

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v24, v2

    move-object/from16 v25, p0

    move/from16 v30, v1

    move/from16 v31, v36

    move/from16 v32, v37

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    add-int v30, v1, v2

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$8;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v3, 0x7

    if-eq v2, v15, :cond_12

    if-ne v2, v3, :cond_11

    goto :goto_f

    :cond_11
    const/16 v26, 0x0

    goto :goto_10

    :cond_12
    :goto_f
    const/16 v26, 0x1

    :goto_10
    if-ne v2, v3, :cond_13

    const/16 v27, 0x1

    goto :goto_11

    :cond_13
    const/16 v27, 0x0

    :goto_11
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Religion"

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, -0x1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v15

    add-int v33, v2, v7

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v24, v1

    move-object/from16 v25, p0

    move/from16 v31, v36

    move/from16 v32, v37

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v36, v36, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    sub-int v1, v4, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v13

    sub-int/2addr v1, v7

    int-to-float v1, v1

    mul-float v1, v1, v23

    float-to-int v1, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v2

    sub-int v2, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v13

    sub-int/2addr v2, v7

    int-to-float v2, v2

    mul-float v2, v2, v23

    float-to-int v2, v2

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_12
    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    if-ge v7, v8, :cond_15

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v8

    if-nez v8, :cond_14

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_15
    move/from16 v9, v36

    :goto_13
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2b

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    if-nez v7, :cond_18

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_14
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_17

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    move v8, v7

    :cond_16
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x7

    goto :goto_14

    :cond_17
    move v3, v8

    goto/16 :goto_1c

    :cond_18
    const/4 v3, 0x1

    if-ne v7, v3, :cond_1b

    const/4 v3, 0x1

    const/4 v7, 0x0

    :goto_15
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_1a

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    move v7, v3

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_1a
    move v3, v7

    goto/16 :goto_1c

    :cond_1b
    const/4 v3, 0x2

    if-ne v7, v3, :cond_1d

    const/4 v3, 0x1

    const/4 v7, 0x0

    :goto_16
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_1a

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v8

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v8, v10

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v10

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v10, v15

    cmpg-float v8, v8, v10

    if-gez v8, :cond_1c

    move v7, v3

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    const/4 v15, 0x6

    goto :goto_16

    :cond_1d
    if-ne v7, v5, :cond_20

    const/4 v3, 0x1

    const/4 v15, 0x0

    :goto_17
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1f

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v7

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v7, v8

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v8

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v8, v10

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1e

    move v15, v3

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_1f
    move v3, v15

    goto/16 :goto_1c

    :cond_20
    if-ne v7, v14, :cond_22

    const/4 v3, 0x1

    const/4 v15, 0x0

    :goto_18
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1f

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getLootValue(I)F

    move-result v7

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getLootValue(I)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_21

    move v15, v3

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_22
    if-ne v7, v13, :cond_24

    const/4 v3, 0x1

    const/4 v15, 0x0

    :goto_19
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1f

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getLootValue(I)F

    move-result v7

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getLootValue(I)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_23

    move v15, v3

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_24
    const/4 v3, 0x6

    if-ne v7, v3, :cond_26

    const/4 v7, 0x1

    const/4 v15, 0x0

    :goto_1a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1f

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v10

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-virtual {v10, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v8, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    move v15, v7

    :cond_25
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x6

    goto :goto_1a

    :cond_26
    const/4 v3, 0x7

    if-ne v7, v3, :cond_28

    const/4 v7, 0x1

    const/4 v15, 0x0

    :goto_1b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1f

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v10

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-virtual {v10, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v8, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    move v15, v7

    :cond_27
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x7

    goto :goto_1b

    :cond_28
    const/4 v3, 0x0

    :goto_1c
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$9;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v10

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v24, 0x2

    mul-int/lit8 v19, v7, 0x2

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object v7, v15

    move-object/from16 v8, p0

    move/from16 v25, v9

    move-object v9, v10

    const/16 v5, 0x64

    move/from16 v10, v17

    move-object v5, v11

    move/from16 v11, v19

    move/from16 v31, v4

    move-object v4, v12

    move v12, v0

    move/from16 v28, v13

    move/from16 v13, v25

    move/from16 v29, v14

    move v14, v1

    move/from16 v30, v2

    move-object v2, v15

    const/16 v32, 0x6

    move/from16 v15, v22

    move/from16 v16, v20

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v2, v0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v7, v8

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$10;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    cmpg-float v10, v7, v39

    if-gez v10, :cond_29

    const/16 v14, 0x64

    goto :goto_1d

    :cond_29
    cmpg-float v10, v7, v43

    if-gez v10, :cond_2a

    move/from16 v14, v40

    goto :goto_1d

    :cond_2a
    const/4 v14, 0x1

    :goto_1d
    invoke-static {v7, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v16, -0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object v12, v8

    move-object/from16 v13, p0

    move/from16 v17, v2

    move/from16 v18, v25

    move/from16 v19, v1

    move/from16 v20, v22

    invoke-direct/range {v12 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    add-int/2addr v2, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$11;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getLootValue(I)F

    move-result v9

    const/16 v10, 0x64

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object v12, v7

    move/from16 v17, v2

    move/from16 v19, v30

    invoke-direct/range {v12 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;Ljava/lang/String;IIIIIII)V

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

    add-int v17, v2, v7

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$12;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v9

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object v12, v2

    invoke-direct/range {v12 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;Ljava/lang/String;IIIIIII)V

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

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v8

    move/from16 v8, v25

    add-int v9, v8, v2

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v12, v4

    move-object v11, v5

    move/from16 v13, v28

    move/from16 v14, v29

    move/from16 v2, v30

    move/from16 v4, v31

    move/from16 v15, v32

    const/4 v3, 0x7

    const/4 v5, 0x3

    goto/16 :goto_13

    :cond_2b
    move/from16 v31, v4

    move v8, v9

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v42

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x3

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$13;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v26

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v2, v41

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    sget v30, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object/from16 v24, v1

    move-object/from16 v25, p0

    invoke-direct/range {v24 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v35

    move/from16 v3, v42

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .locals 0

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->actionOnClose()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    const/4 v10, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    move-object v5, p1

    invoke-static/range {v5 .. v12}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v7, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->lTime2:J

    return-void
.end method
