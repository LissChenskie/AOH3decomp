.class public Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Civ_ArmiesRegiments.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iSortID:I = 0x6

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

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-direct {v8}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;-><init>()V

    const-wide/16 v9, 0x0

    move-wide v10, v9

    const/4 v9, 0x0

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v12

    if-ge v9, v12, :cond_4

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v12

    if-lez v12, :cond_2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    move/from16 v28, v14

    move/from16 v17, v15

    iget-wide v14, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    double-to-int v2, v14

    int-to-float v2, v2

    invoke-direct {v12, v9, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-wide v14, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    cmpl-double v2, v14, v10

    if-lez v2, :cond_3

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-wide v10, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    goto :goto_2

    :cond_2
    move/from16 v28, v14

    move/from16 v17, v15

    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move/from16 v15, v17

    move/from16 v14, v28

    const/4 v2, 0x2

    goto :goto_1

    :cond_4
    move/from16 v28, v14

    move/from16 v17, v15

    mul-int/lit8 v2, v18, 0x2

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$1;

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v23, v1, v12

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/2addr v12, v14

    sub-int v24, v2, v12

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v12, v14

    sub-int v25, v2, v12

    const/16 v27, 0x0

    move-object/from16 v20, v9

    move-object/from16 v21, p0

    move/from16 v22, v7

    move-object/from16 v26, v8

    invoke-direct/range {v20 .. v27}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v15, 0x1

    sub-int/2addr v2, v15

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

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$2;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Civilizations"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ": "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v22, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v23

    move-object v7, v14

    move/from16 v32, v3

    move-object v3, v8

    move-object/from16 v8, p0

    move/from16 v33, v4

    move/from16 v34, v5

    move-wide v4, v10

    move-object v10, v15

    move/from16 v11, v22

    move/from16 v35, v0

    move-object v0, v12

    const/4 v15, 0x0

    move v12, v2

    move-object/from16 v36, v13

    move v13, v1

    move/from16 v22, v2

    move-object v2, v14

    move/from16 v37, v28

    move/from16 v14, v20

    move-wide/from16 v24, v4

    move/from16 v5, v17

    const/4 v4, 0x1

    move/from16 v15, v18

    move/from16 v16, v23

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$3;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "MaximumManpower"

    invoke-virtual {v8, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v8, v24

    double-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v17

    move-object v8, v2

    move-object/from16 v9, p0

    move/from16 v13, v22

    move v14, v1

    move-object v0, v15

    move/from16 v15, v20

    move/from16 v16, v18

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$4;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    if-eqz v8, :cond_6

    if-ne v8, v4, :cond_5

    goto :goto_3

    :cond_5
    const/16 v22, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    move/from16 v22, v4

    :goto_4
    if-ne v8, v4, :cond_7

    move/from16 v23, v4

    goto :goto_5

    :cond_7
    const/16 v23, 0x0

    :goto_5
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Name"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x6

    mul-int/2addr v9, v15

    add-int v29, v8, v9

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v20, v7

    move-object/from16 v21, p0

    move/from16 v26, v2

    move/from16 v27, v1

    move/from16 v28, v5

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    add-int/2addr v2, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$5;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    const/4 v14, 0x3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_9

    if-ne v8, v14, :cond_8

    goto :goto_6

    :cond_8
    const/16 v22, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    move/from16 v22, v4

    :goto_7
    if-ne v8, v14, :cond_a

    move/from16 v23, v4

    goto :goto_8

    :cond_a
    const/16 v23, 0x0

    :goto_8
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Discipline"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v9, v15

    add-int v29, v8, v9

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v20, v7

    move-object/from16 v21, p0

    move/from16 v26, v2

    move/from16 v27, v1

    move/from16 v28, v5

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$6;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    const/4 v13, 0x4

    const/4 v12, 0x5

    if-eq v7, v13, :cond_c

    if-ne v7, v12, :cond_b

    goto :goto_9

    :cond_b
    const/16 v22, 0x0

    goto :goto_a

    :cond_c
    :goto_9
    move/from16 v22, v4

    :goto_a
    if-ne v7, v12, :cond_d

    move/from16 v23, v4

    goto :goto_b

    :cond_d
    const/16 v23, 0x0

    :goto_b
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "RegimentsLimit"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v15

    add-int v29, v7, v8

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v20, v5

    move-object/from16 v21, p0

    move/from16 v26, v2

    move/from16 v27, v1

    move/from16 v28, v37

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int v26, v2, v5

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$7;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    const/4 v11, 0x7

    if-eq v5, v15, :cond_f

    if-ne v5, v11, :cond_e

    goto :goto_c

    :cond_e
    const/16 v22, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    move/from16 v22, v4

    :goto_d
    if-ne v5, v11, :cond_10

    move/from16 v23, v4

    goto :goto_e

    :cond_10
    const/16 v23, 0x0

    :goto_e
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v5, v15

    add-int v29, v0, v5

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v20, v2

    move-object/from16 v21, p0

    move/from16 v27, v1

    move/from16 v28, v37

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v2, 0x2

    mul-int/2addr v0, v2

    sub-int v0, v33, v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v5, v12

    sub-int/2addr v0, v5

    int-to-float v0, v0

    mul-float v0, v0, v19

    float-to-int v0, v0

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v5, v2

    sub-int v2, v33, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v5, v12

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v31

    float-to-int v2, v2

    :goto_f
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    if-nez v5, :cond_12

    move v7, v4

    const/4 v5, 0x0

    :goto_10
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v8

    move-object/from16 v10, v36

    if-ge v7, v8, :cond_22

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    move v5, v7

    :cond_11
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v36, v10

    goto :goto_10

    :cond_12
    move-object/from16 v10, v36

    if-ne v5, v4, :cond_14

    move v7, v4

    const/4 v5, 0x0

    :goto_11
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_22

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    move v5, v7

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_14
    const/4 v7, 0x2

    if-ne v5, v7, :cond_16

    move v7, v4

    const/4 v5, 0x0

    :goto_12
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_22

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_15

    move v5, v7

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_16
    if-ne v5, v14, :cond_18

    move v7, v4

    const/4 v5, 0x0

    :goto_13
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_22

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_17

    move v5, v7

    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_18
    if-ne v5, v13, :cond_1a

    move v7, v4

    const/4 v5, 0x0

    :goto_14
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_22

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    if-ge v8, v9, :cond_19

    move v5, v7

    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_1a
    if-ne v5, v12, :cond_1c

    move v7, v4

    const/4 v5, 0x0

    :goto_15
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_22

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    if-le v8, v9, :cond_1b

    move v5, v7

    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_1c
    if-ne v5, v15, :cond_1e

    move v7, v4

    const/4 v5, 0x0

    :goto_16
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_22

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-wide v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-wide v13, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    cmpg-double v8, v8, v13

    if-gez v8, :cond_1d

    move v5, v7

    :cond_1d
    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    goto :goto_16

    :cond_1e
    if-ne v5, v11, :cond_21

    move v5, v4

    const/4 v12, 0x0

    :goto_17
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_20

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-wide v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-wide v13, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    cmpl-double v7, v7, v13

    if-lez v7, :cond_1f

    move v12, v5

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_20
    move v5, v12

    goto :goto_18

    :cond_21
    const/4 v5, 0x0

    :cond_22
    :goto_18
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$8;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v20, 0x2

    mul-int/lit8 v13, v7, 0x2

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object v7, v14

    move-object/from16 v8, p0

    move-object/from16 v38, v10

    move v10, v12

    move/from16 v22, v11

    move v11, v13

    const/16 v23, 0x5

    move/from16 v12, v35

    const/16 v19, 0x4

    move v13, v1

    move-object v4, v14

    const/16 v25, 0x3

    move v14, v0

    move/from16 v26, v15

    move/from16 v15, v18

    move/from16 v16, v21

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;Ljava/lang/String;IIIIIII)V

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

    add-int v4, v35, v4

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$9;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v38

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    const/16 v10, 0x64

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v12, -0x1

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object v8, v7

    move-object/from16 v9, p0

    move v13, v4

    move v14, v1

    move-object/from16 v39, v15

    move v15, v0

    move/from16 v16, v18

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;Ljava/lang/String;IIIIIII)V

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

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$10;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v39

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

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

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object v8, v7

    move-object/from16 v9, p0

    move v13, v4

    move-object/from16 v40, v15

    move v15, v2

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;Ljava/lang/String;IIIIIII)V

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

    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$11;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v40

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-wide v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    double-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object v8, v4

    move-object/from16 v9, p0

    move-object v7, v15

    move v15, v2

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;Ljava/lang/String;IIIIIII)V

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

    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v36, v7

    move v4, v8

    move/from16 v13, v19

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v14, v25

    move/from16 v15, v26

    goto/16 :goto_f

    :cond_23
    move/from16 v25, v14

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

    move/from16 v4, v33

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$12;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Armies"

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v7, v1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;Ljava/lang/String;ZZI)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v32

    move/from16 v3, v34

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

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

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->lTime2:J

    return-void
.end method
