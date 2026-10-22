.class public Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Civ_Population.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static goBackToRank:Z = false

.field public static iSortID:I = 0x2

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 40

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

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget-boolean v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->goBackToRank:Z

    if-eqz v7, :cond_0

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-gtz v7, :cond_2

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    goto :goto_0

    :cond_0
    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v7, :cond_1

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-lez v7, :cond_1

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    sput v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    goto :goto_0

    :cond_1
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-gtz v7, :cond_2

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    :cond_2
    :goto_0
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v2

    sub-int v7, v4, v7

    int-to-float v7, v7

    const v19, 0x3e99999a    # 0.3f

    mul-float v7, v7, v19

    float-to-int v15, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v2

    sub-int v7, v4, v7

    int-to-float v7, v7

    const v31, 0x3e4ccccd    # 0.2f

    mul-float v7, v7, v31

    float-to-int v14, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v0

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-direct {v8}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v13

    if-ge v12, v13, :cond_7

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationSize()I

    move-result v2

    if-ge v13, v2, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/16 v17, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_4

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v28, v14

    move-object/from16 v14, v17

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v17

    move/from16 v29, v15

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationCivID(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationID(I)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v2, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, -0x1

    move/from16 v14, v28

    move/from16 v15, v29

    goto :goto_3

    :cond_4
    move/from16 v28, v14

    move/from16 v29, v15

    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_5

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationCivID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v14, v28

    move/from16 v15, v29

    goto/16 :goto_2

    :cond_6
    move/from16 v28, v14

    move/from16 v29, v15

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x2

    goto/16 :goto_1

    :cond_7
    move/from16 v28, v14

    move/from16 v29, v15

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x1

    sub-int/2addr v2, v11

    :goto_5
    if-ltz v2, :cond_8

    new-instance v11, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v11, v12, v13}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v8, v11}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_8
    mul-int/lit8 v2, v18, 0x3

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x2

    mul-int/2addr v9, v10

    add-int/2addr v2, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$1;

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v23, v1, v11

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v11, v10

    sub-int v24, v2, v11

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v11, v10

    sub-int v25, v2, v11

    const/16 v27, 0x0

    move-object/from16 v20, v9

    move-object/from16 v21, p0

    move/from16 v22, v7

    move-object/from16 v26, v8

    invoke-direct/range {v20 .. v27}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x2

    mul-int/2addr v8, v9

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    sub-int v7, v4, v0

    sub-int v20, v7, v2

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$2;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->population:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v17

    const/16 v21, 0x0

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v7, v15

    move-object/from16 v8, p0

    move v11, v2

    move v12, v1

    move/from16 v32, v3

    const/4 v3, 0x0

    move/from16 v13, v20

    move-object v3, v14

    move/from16 v33, v28

    move/from16 v14, v18

    move/from16 v35, v5

    move-object v5, v15

    move/from16 v34, v29

    move/from16 v15, v17

    move/from16 v16, v21

    move/from16 v17, v22

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;IIIIIIII)V

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

    add-int/2addr v1, v5

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$3;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAverageGrowthRate()F

    move-result v8

    const/16 v15, 0x64

    invoke-static {v8, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "%"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->population:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    const/16 v17, 0x0

    move-object v8, v5

    move-object/from16 v9, p0

    move v12, v2

    move v13, v1

    move-object v7, v14

    move/from16 v14, v20

    move/from16 v15, v18

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v8

    add-int/2addr v1, v5

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$4;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-wide v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(DI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->population:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    move-object v8, v5

    move-object/from16 v9, p0

    move v13, v1

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v8

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$5;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    if-eqz v9, :cond_a

    if-ne v9, v5, :cond_9

    goto :goto_6

    :cond_9
    const/16 v22, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    move/from16 v22, v5

    :goto_7
    if-ne v9, v5, :cond_b

    const/16 v23, 0x1

    goto :goto_8

    :cond_b
    const/16 v23, 0x0

    :goto_8
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Name"

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x6

    mul-int/2addr v9, v15

    add-int v29, v5, v9

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v20, v8

    move-object/from16 v21, p0

    move/from16 v26, v2

    move/from16 v27, v1

    move/from16 v28, v34

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$6;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    const/4 v14, 0x3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_d

    if-ne v8, v14, :cond_c

    goto :goto_9

    :cond_c
    const/16 v22, 0x0

    goto :goto_a

    :cond_d
    :goto_9
    const/16 v22, 0x1

    :goto_a
    if-ne v8, v14, :cond_e

    const/16 v23, 0x1

    goto :goto_b

    :cond_e
    const/16 v23, 0x0

    :goto_b
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Population"

    invoke-virtual {v8, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v9, v15

    add-int v29, v8, v9

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v20, v5

    move-object/from16 v21, p0

    move/from16 v26, v2

    move/from16 v27, v1

    move/from16 v28, v34

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$7;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    const/4 v12, 0x4

    const/4 v11, 0x5

    if-eq v8, v12, :cond_10

    if-ne v8, v11, :cond_f

    goto :goto_c

    :cond_f
    const/16 v22, 0x0

    goto :goto_d

    :cond_10
    :goto_c
    const/16 v22, 0x1

    :goto_d
    if-ne v8, v11, :cond_11

    const/16 v23, 0x1

    goto :goto_e

    :cond_11
    const/16 v23, 0x0

    :goto_e
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v9, 0x0

    sget-object v9, Laoc/kingdoms/lukasz/map/terrain/exjB/uiwPYaNhJS;->QICgLXjf:Ljava/lang/String;

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v9, v15

    add-int v29, v8, v9

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v20, v5

    move-object/from16 v21, p0

    move/from16 v26, v2

    move/from16 v27, v1

    move/from16 v28, v33

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int v26, v2, v5

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$8;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    const/4 v10, 0x7

    if-eq v5, v15, :cond_13

    if-ne v5, v10, :cond_12

    goto :goto_f

    :cond_12
    const/16 v22, 0x0

    goto :goto_10

    :cond_13
    :goto_f
    const/16 v22, 0x1

    :goto_10
    if-ne v5, v10, :cond_14

    const/16 v23, 0x1

    goto :goto_11

    :cond_14
    const/16 v23, 0x0

    :goto_11
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Manpower"

    invoke-virtual {v5, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v15

    add-int v29, v5, v8

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v20, v2

    move-object/from16 v21, p0

    move/from16 v27, v1

    move/from16 v28, v33

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v5

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/2addr v2, v5

    sub-int v2, v4, v2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v11

    sub-int/2addr v2, v8

    int-to-float v2, v2

    mul-float v2, v2, v19

    float-to-int v2, v2

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v8, v5

    sub-int v5, v4, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v11

    sub-int/2addr v5, v8

    int-to-float v5, v5

    mul-float v5, v5, v31

    float-to-int v5, v5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_12
    sget v16, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v10

    if-ge v8, v10, :cond_16

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v10

    if-nez v10, :cond_15

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x7

    goto :goto_12

    :cond_16
    :goto_13
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_29

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    if-nez v8, :cond_19

    const/4 v8, 0x0

    const/4 v10, 0x1

    :goto_14
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v10, v15, :cond_18

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    move v8, v10

    :cond_17
    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x5

    goto :goto_14

    :cond_18
    move v12, v8

    const/4 v15, 0x6

    goto/16 :goto_1c

    :cond_19
    const/4 v10, 0x1

    if-ne v8, v10, :cond_1b

    const/4 v8, 0x0

    const/4 v10, 0x1

    :goto_15
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_18

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    move v8, v10

    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_1b
    const/4 v10, 0x2

    if-ne v8, v10, :cond_1d

    const/4 v8, 0x0

    const/4 v10, 0x1

    :goto_16
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_18

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v11

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v15

    if-ge v11, v15, :cond_1c

    move v8, v10

    :cond_1c
    add-int/lit8 v10, v10, 0x1

    goto :goto_16

    :cond_1d
    if-ne v8, v14, :cond_1f

    const/4 v8, 0x0

    const/4 v10, 0x1

    :goto_17
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_18

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v11

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v15

    if-le v11, v15, :cond_1e

    move v8, v10

    :cond_1e
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_1f
    if-ne v8, v12, :cond_21

    const/4 v8, 0x0

    const/4 v10, 0x1

    :goto_18
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_18

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v11

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v15

    cmpg-float v11, v11, v15

    if-gez v11, :cond_20

    move v8, v10

    :cond_20
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_21
    const/4 v11, 0x5

    if-ne v8, v11, :cond_23

    const/4 v8, 0x0

    const/4 v10, 0x1

    :goto_19
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v10, v15, :cond_18

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v15

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v19

    cmpl-float v15, v15, v19

    if-lez v15, :cond_22

    move v8, v10

    :cond_22
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    :cond_23
    const/4 v15, 0x6

    if-ne v8, v15, :cond_25

    const/4 v8, 0x0

    const/4 v10, 0x1

    :goto_1a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_27

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v11

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v12

    if-ge v11, v12, :cond_24

    move v8, v10

    :cond_24
    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x4

    goto :goto_1a

    :cond_25
    const/4 v10, 0x7

    if-ne v8, v10, :cond_28

    const/4 v8, 0x0

    const/4 v11, 0x1

    :goto_1b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_27

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v12

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v10

    if-le v12, v10, :cond_26

    move v8, v11

    :cond_26
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x7

    goto :goto_1b

    :cond_27
    move v12, v8

    goto :goto_1c

    :cond_28
    const/4 v12, 0x0

    :goto_1c
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$9;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v10

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v21, 0x2

    mul-int/lit8 v22, v8, 0x2

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object v8, v7

    move-object v7, v11

    move/from16 v24, v4

    move-object v4, v8

    move-object/from16 v8, p0

    move/from16 v25, v5

    move-object v5, v9

    move-object v9, v10

    const/16 v26, 0x7

    move/from16 v10, v16

    move-object/from16 v27, v4

    move-object v4, v11

    const/16 v20, 0x5

    move/from16 v11, v22

    move/from16 v36, v12

    const/16 v19, 0x4

    move v12, v0

    move-object/from16 v37, v13

    move v13, v1

    move/from16 v22, v14

    move v14, v2

    move/from16 v28, v15

    move/from16 v15, v18

    move/from16 v16, v23

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v7

    add-int/2addr v4, v0

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$10;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v15, v36

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v12, -0x1

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object v8, v7

    move-object/from16 v9, p0

    move v13, v4

    move v14, v1

    move/from16 v38, v15

    move v15, v2

    move/from16 v16, v18

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;IIIIIII)V

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

    add-int/2addr v4, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$11;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v15, v38

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v9

    const/16 v14, 0x64

    invoke-static {v9, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v13, v27

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object v8, v7

    move-object/from16 v9, p0

    move-object/from16 v23, v13

    move v13, v4

    move/from16 v27, v14

    move v14, v1

    move/from16 v39, v15

    move/from16 v15, v25

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;IIIIIII)V

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

    add-int v13, v4, v7

    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$12;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v15, v39

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object v8, v4

    move v7, v15

    move/from16 v15, v25

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v9

    add-int/2addr v1, v4

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v9, v5

    move/from16 v12, v19

    move/from16 v11, v20

    move/from16 v14, v22

    move-object/from16 v7, v23

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v15, v28

    move-object/from16 v13, v37

    goto/16 :goto_13

    :cond_29
    move/from16 v24, v4

    move-object/from16 v37, v13

    move/from16 v22, v14

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v35

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$13;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v2, v37

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v7, v1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v32

    move/from16 v3, v35

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

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

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->lTime2:J

    return-void
.end method
