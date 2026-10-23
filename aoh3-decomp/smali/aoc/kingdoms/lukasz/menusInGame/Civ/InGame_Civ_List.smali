.class public Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Civ_List.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static civsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static civsListTitle:Ljava/lang/String;

.field public static civsListTitle2:Ljava/lang/String;

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J

.field public static modeID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsListTitle:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsListTitle2:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 39

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

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

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x3

    mul-int/2addr v8, v15

    add-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v8, v2

    sub-int v8, v4, v8

    int-to-float v8, v8

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v10, v2

    sub-int v10, v4, v10

    int-to-float v10, v10

    const v11, 0x3e19999a    # 0.15f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/4 v12, -0x1

    sput v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Compare;->civLeft_Rank:I

    sput v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Compare;->civRight_Rank:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v7

    add-int/2addr v1, v12

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v0

    new-instance v13, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-direct {v13}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;-><init>()V

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v11, 0x1

    if-nez v14, :cond_1

    sget-object v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v11

    :goto_0
    if-ltz v14, :cond_0

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    sget-object v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    move/from16 v24, v12

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v11

    long-to-int v2, v11

    int-to-float v2, v2

    invoke-direct {v9, v15, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v13, v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    add-int/lit8 v14, v14, -0x1

    move/from16 v12, v24

    const/4 v2, 0x2

    const/4 v11, 0x1

    const/4 v15, 0x3

    goto :goto_0

    :cond_0
    move/from16 v24, v12

    goto/16 :goto_6

    :cond_1
    move v2, v11

    move/from16 v24, v12

    if-ne v14, v2, :cond_2

    sget-object v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v2

    :goto_1
    if-ltz v9, :cond_6

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    sget-object v11, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget-object v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v12

    float-to-int v12, v12

    int-to-float v12, v12

    invoke-direct {v2, v11, v12}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v13, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    if-ne v14, v2, :cond_3

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    :goto_2
    if-ltz v2, :cond_6

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    sget-object v11, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget-object v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v9, v11, v12}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v13, v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x3

    if-ne v14, v2, :cond_4

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    :goto_3
    if-ltz v2, :cond_6

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    sget-object v11, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget-object v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-wide v14, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    double-to-int v12, v14

    int-to-float v12, v12

    invoke-direct {v9, v11, v12}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v13, v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x4

    if-ne v14, v2, :cond_5

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    :goto_4
    if-ltz v2, :cond_6

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    sget-object v11, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget-object v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    int-to-float v12, v12

    invoke-direct {v9, v11, v12}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v13, v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x5

    if-ne v14, v2, :cond_6

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    :goto_5
    if-ltz v2, :cond_6

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    sget-object v11, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget-object v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    float-to-int v12, v12

    int-to-float v12, v12

    invoke-direct {v9, v11, v12}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v13, v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_6
    :goto_6
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    const/4 v9, 0x3

    mul-int/2addr v2, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x2

    mul-int/2addr v9, v11

    add-int/2addr v2, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v19, v1, v12

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v12, v11

    sub-int v20, v2, v12

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v12, v11

    sub-int v21, v2, v12

    const/16 v23, 0x0

    move-object/from16 v16, v9

    move-object/from16 v17, p0

    move/from16 v18, v24

    move-object/from16 v22, v13

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v9, v11

    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const-string v15, "Provinces"

    const-string v14, "Population"

    if-nez v12, :cond_7

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v12, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    :cond_7
    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Economy"

    :goto_7
    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    :cond_8
    const/4 v13, 0x2

    if-ne v12, v13, :cond_9

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v12, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    :cond_9
    const/4 v13, 0x3

    if-ne v12, v13, :cond_a

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "MaximumManpower"

    goto :goto_7

    :cond_a
    const/4 v13, 0x4

    if-ne v12, v13, :cond_b

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "RegimentsLimit"

    goto :goto_7

    :cond_b
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Prestige"

    goto :goto_7

    :goto_8
    sget v13, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    if-nez v13, :cond_c

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->population:I

    move/from16 v17, v13

    move-object/from16 v16, v14

    goto :goto_a

    :cond_c
    move-object/from16 v16, v14

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    sget v13, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    :goto_9
    move/from16 v17, v13

    goto :goto_a

    :cond_d
    const/4 v14, 0x2

    if-ne v13, v14, :cond_e

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    goto :goto_9

    :cond_e
    const/4 v14, 0x3

    if-ne v13, v14, :cond_f

    sget v13, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    goto :goto_9

    :cond_f
    const/4 v14, 0x4

    if-ne v13, v14, :cond_10

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    goto :goto_9

    :cond_10
    sget v13, Laoc/kingdoms/lukasz/textures/Images;->rankGold:I

    goto :goto_9

    :goto_a
    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v18, v24, v13

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v13, v1, v13

    sub-int/2addr v13, v7

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    add-int/2addr v13, v14

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v19, v13, v14

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v20, 0x2

    mul-int/lit8 v14, v14, 0x2

    add-int v20, v13, v14

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v21

    move-object v13, v11

    move/from16 v33, v3

    move-object/from16 v3, v16

    move-object v14, v12

    move-object v12, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v9

    move/from16 v19, v20

    move/from16 v20, v21

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$2;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Civilizations"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    move-object/from16 v18, v14

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v20, v24, v13

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v13, v1, v13

    sub-int v21, v13, v7

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v23

    move-object v13, v11

    move/from16 v34, v5

    move-object/from16 v5, v18

    move-object/from16 v14, p0

    move-object/from16 v35, v5

    move-object v5, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v21

    move/from16 v20, v9

    move/from16 v21, v22

    move/from16 v22, v23

    invoke-direct/range {v13 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v11, v13

    add-int/2addr v9, v11

    add-int v9, v24, v9

    sget-object v11, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    const/4 v15, 0x0

    move v11, v15

    :goto_b
    sget-object v13, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_11

    sget-object v13, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    sget-object v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_11
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$3;

    sget-object v18, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_PROVINCES:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v13, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v13, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v5, v13

    sub-int v21, v9, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v5, v1, v5

    sub-int v22, v5, v7

    sub-int v5, v4, v0

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v14, v13

    sub-int/2addr v9, v14

    sub-int v23, v5, v9

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x3

    mul-int/2addr v5, v9

    add-int/2addr v2, v5

    add-int v24, v2, v7

    const/16 v25, 0x1

    move-object/from16 v16, v11

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sub-int/2addr v2, v7

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$4;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    if-eqz v11, :cond_13

    if-ne v11, v5, :cond_12

    goto :goto_c

    :cond_12
    move/from16 v18, v15

    goto :goto_d

    :cond_13
    :goto_c
    move/from16 v18, v5

    :goto_d
    if-ne v11, v5, :cond_14

    const/16 v19, 0x1

    goto :goto_e

    :cond_14
    move/from16 v19, v15

    :goto_e
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Ranking"

    invoke-virtual {v5, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x6

    mul-int/2addr v11, v14

    add-int v25, v5, v11

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v16, v9

    move-object/from16 v17, p0

    move/from16 v22, v7

    move/from16 v23, v1

    move/from16 v24, v10

    invoke-direct/range {v16 .. v26}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v7, v5

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$5;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v11, 0x2

    if-eq v9, v11, :cond_16

    const/4 v11, 0x3

    if-ne v9, v11, :cond_15

    goto :goto_f

    :cond_15
    move/from16 v18, v15

    goto :goto_10

    :cond_16
    const/4 v11, 0x3

    :goto_f
    const/16 v18, 0x1

    :goto_10
    if-ne v9, v11, :cond_17

    const/16 v19, 0x1

    goto :goto_11

    :cond_17
    move/from16 v19, v15

    :goto_11
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v11, 0x0

    sget-object v11, Landroidx/lifecycle/livedata/core/jzw/jkEBdieJhbh;->pKtJtzs:Ljava/lang/String;

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v11, v14

    add-int v25, v9, v11

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v16, v5

    move-object/from16 v17, p0

    move/from16 v22, v7

    move/from16 v23, v1

    move/from16 v24, v8

    invoke-direct/range {v16 .. v26}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;ZZLjava/lang/String;IIIIII)V

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

    add-int/2addr v7, v5

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$6;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_19

    const/4 v9, 0x5

    if-ne v8, v9, :cond_18

    goto :goto_12

    :cond_18
    move/from16 v18, v15

    goto :goto_13

    :cond_19
    const/4 v9, 0x5

    :goto_12
    const/16 v18, 0x1

    :goto_13
    if-ne v8, v9, :cond_1a

    const/16 v19, 0x1

    goto :goto_14

    :cond_1a
    move/from16 v19, v15

    :goto_14
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v14

    add-int v25, v3, v8

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v16, v5

    move-object/from16 v17, p0

    move/from16 v22, v7

    move/from16 v23, v1

    move/from16 v24, v10

    invoke-direct/range {v16 .. v26}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v7, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$7;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v13, 0x7

    if-eq v5, v14, :cond_1c

    if-ne v5, v13, :cond_1b

    goto :goto_15

    :cond_1b
    move/from16 v18, v15

    goto :goto_16

    :cond_1c
    :goto_15
    const/16 v18, 0x1

    :goto_16
    if-ne v5, v13, :cond_1d

    const/16 v19, 0x1

    goto :goto_17

    :cond_1d
    move/from16 v19, v15

    :goto_17
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v14

    add-int v25, v5, v8

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v16, v3

    move-object/from16 v17, p0

    move/from16 v22, v7

    move/from16 v23, v1

    move/from16 v24, v10

    invoke-direct/range {v16 .. v26}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int v22, v7, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$8;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/16 v7, 0x8

    const/16 v8, 0x9

    if-eq v5, v7, :cond_1f

    if-ne v5, v8, :cond_1e

    goto :goto_18

    :cond_1e
    move/from16 v18, v15

    goto :goto_19

    :cond_1f
    :goto_18
    const/16 v18, 0x1

    :goto_19
    if-ne v5, v8, :cond_20

    const/16 v19, 0x1

    goto :goto_1a

    :cond_20
    move/from16 v19, v15

    :goto_1a
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Goods"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v14

    add-int v25, v5, v7

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v16, v3

    move-object/from16 v17, p0

    move/from16 v23, v1

    move/from16 v24, v10

    invoke-direct/range {v16 .. v26}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/2addr v3, v5

    sub-int v3, v4, v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v14

    sub-int/2addr v3, v7

    int-to-float v3, v3

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v7

    float-to-int v3, v3

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v5

    sub-int v5, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v14

    sub-int/2addr v5, v7

    int-to-float v5, v5

    const v7, 0x3e19999a    # 0.15f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v8, v15

    :goto_1b
    if-ge v8, v7, :cond_21

    sget-object v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_21
    :goto_1c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_34

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    if-nez v7, :cond_23

    move v8, v15

    const/4 v7, 0x1

    :goto_1d
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_26

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-le v9, v10, :cond_22

    move v8, v7

    :cond_22
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_23
    const/4 v10, 0x1

    if-ne v7, v10, :cond_25

    move v7, v10

    move v8, v15

    :goto_1e
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_26

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-ge v9, v10, :cond_24

    move v8, v7

    :cond_24
    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x1

    goto :goto_1e

    :cond_25
    move v8, v15

    :cond_26
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_29

    const/4 v7, 0x1

    :goto_1f
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_28

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_27

    move v8, v7

    :cond_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_28
    move v10, v8

    goto/16 :goto_25

    :cond_29
    const/4 v10, 0x3

    if-ne v7, v10, :cond_2b

    const/4 v7, 0x1

    :goto_20
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_28

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2a

    move v8, v7

    :cond_2a
    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x3

    goto :goto_20

    :cond_2b
    const/4 v9, 0x4

    if-ne v7, v9, :cond_2d

    const/4 v7, 0x1

    :goto_21
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_28

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v10, v9, :cond_2c

    move v8, v7

    :cond_2c
    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x4

    goto :goto_21

    :cond_2d
    const/4 v10, 0x5

    if-ne v7, v10, :cond_2f

    const/4 v7, 0x1

    :goto_22
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_28

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_2e

    move v8, v7

    :cond_2e
    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x5

    goto :goto_22

    :cond_2f
    if-ne v7, v14, :cond_31

    const/4 v7, 0x1

    :goto_23
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_28

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v9

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v10

    if-ge v9, v10, :cond_30

    move v8, v7

    :cond_30
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    :cond_31
    if-ne v7, v13, :cond_28

    const/4 v7, 0x1

    :goto_24
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_28

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v9

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v10

    if-le v9, v10, :cond_32

    move v8, v7

    :cond_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    :goto_25
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$9;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v8, v35

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-gez v13, :cond_33

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v13

    goto :goto_26

    :cond_33
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    :goto_26
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRanking_IMG_STAR_CIVID(I)I

    move-result v16

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->rankGold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v18

    move-object v7, v9

    move/from16 v26, v4

    move-object v4, v8

    move-object/from16 v8, p0

    move/from16 v27, v3

    move-object v3, v9

    const/16 v28, 0x4

    move-object v9, v13

    move v13, v10

    const/16 v19, 0x5

    const/16 v20, 0x1

    const/16 v21, 0x3

    move/from16 v10, v16

    move-object/from16 v36, v11

    move/from16 v29, v19

    move/from16 v30, v20

    move v11, v0

    move-object/from16 v35, v4

    move-object v4, v12

    move v12, v1

    move/from16 v31, v1

    move v1, v13

    const/16 v32, 0x7

    move v13, v5

    move/from16 v37, v14

    move v14, v2

    move/from16 v38, v21

    move/from16 v15, v18

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v3, v0

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$10;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v9, v35

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x2

    mul-int/lit8 v20, v8, 0x2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v16, v7

    move-object/from16 v17, p0

    move/from16 v21, v3

    move/from16 v22, v31

    move/from16 v23, v27

    move/from16 v24, v2

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;Ljava/lang/String;IIIIIII)V

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

    add-int/2addr v3, v7

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, v36

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v19, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v16, v7

    move/from16 v20, v3

    move/from16 v21, v31

    move/from16 v22, v5

    move/from16 v23, v2

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;-><init>(Ljava/lang/String;IIIIIII)V

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

    add-int/2addr v3, v7

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v16, v7

    move/from16 v20, v3

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;-><init>(Ljava/lang/String;IIIIIII)V

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

    add-int v19, v3, v7

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$11;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getLargestGoodsProducedByCiv(I)I

    move-result v18

    move-object/from16 v16, v3

    move-object/from16 v17, p0

    move/from16 v20, v31

    move/from16 v21, v5

    move/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;IIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int v3, v31, v3

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v11, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v1, v3

    move-object v12, v4

    move/from16 v4, v26

    move/from16 v3, v27

    move/from16 v13, v32

    move/from16 v14, v37

    const/4 v15, 0x0

    goto/16 :goto_1c

    :cond_34
    move/from16 v31, v1

    move/from16 v26, v4

    const/16 v38, 0x3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v34

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    move/from16 v1, v31

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$12;

    sget-object v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsListTitle:Ljava/lang/String;

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsListTitle2:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    move-object v7, v1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method

.method public static final addCiv(I)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    const/4 v10, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    move-object v5, p1

    invoke-static/range {v5 .. v12}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getPosX()I

    move-result v0

    add-int v7, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->lTime2:J

    return-void
.end method
