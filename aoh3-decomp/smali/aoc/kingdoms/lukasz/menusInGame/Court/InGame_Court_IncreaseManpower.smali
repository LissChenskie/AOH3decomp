.class public Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Court_IncreaseManpower.java"


# static fields
.field public static CLICK_X_TIMES:I = 0x1

.field public static iSortID:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 35

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

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX()I

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

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_0

    :cond_0
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_0
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v15, 0x2

    mul-int/2addr v7, v15

    sub-int v7, v4, v7

    int-to-float v7, v7

    const v17, 0x3e4ccccd    # 0.2f

    mul-float v7, v7, v17

    float-to-int v14, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v15

    sub-int v7, v4, v7

    int-to-float v7, v7

    mul-float v7, v7, v17

    float-to-int v13, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v15

    sub-int v7, v4, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x4

    mul-int/2addr v8, v12

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v7, v8

    float-to-int v11, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v15

    sub-int v7, v4, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v12

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, v17

    float-to-int v10, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->COUNCIL_TIPS:Z

    if-eqz v7, :cond_1

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$1;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "TipForBestResultsIncreaseManpowerInProvincesWithHighestGrowthRateOfPopulation"

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    mul-int/lit8 v7, v0, 0x2

    sub-int v18, v4, v7

    move-object v7, v8

    move-object v15, v8

    move-object/from16 v8, p0

    move/from16 v29, v2

    const/4 v2, 0x1

    move/from16 v20, v10

    move v10, v0

    move/from16 v16, v11

    move v11, v3

    move/from16 v12, v18

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;III)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    goto :goto_1

    :cond_1
    move/from16 v29, v2

    move/from16 v20, v10

    move/from16 v16, v11

    const/4 v2, 0x1

    :goto_1
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v18, v7, v8

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$2;

    const-string v9, ""

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v21

    const/16 v22, 0x0

    move-object v7, v15

    move-object/from16 v8, p0

    move/from16 v11, v18

    move v12, v3

    move/from16 v30, v13

    move/from16 v13, v16

    move/from16 v31, v14

    move v14, v5

    move/from16 v32, v1

    move-object v2, v15

    const/4 v1, 0x2

    move/from16 v15, v21

    move/from16 v16, v22

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;IIIIIII)V

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

    add-int v18, v18, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$3;

    const-string v9, "-"

    move-object v7, v2

    move/from16 v10, v18

    move v11, v3

    move/from16 v12, v20

    move v13, v5

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;IIII)V

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

    add-int v10, v18, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$4;

    const-string v9, "+"

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;IIII)V

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

    add-int/2addr v3, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$5;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    if-ne v8, v9, :cond_2

    goto :goto_2

    :cond_2
    const/16 v20, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v20, v9

    :goto_3
    if-ne v8, v9, :cond_4

    const/16 v21, 0x1

    goto :goto_4

    :cond_4
    const/16 v21, 0x0

    :goto_4
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Name"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x6

    mul-int/2addr v9, v14

    add-int v27, v8, v9

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v18, v7

    move-object/from16 v19, p0

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v31

    invoke-direct/range {v18 .. v28}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;ZZLjava/lang/String;IIIIII)V

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

    add-int/2addr v2, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$6;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    const/4 v13, 0x3

    if-eq v8, v1, :cond_6

    if-ne v8, v13, :cond_5

    goto :goto_5

    :cond_5
    const/16 v20, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/16 v20, 0x1

    :goto_6
    if-ne v8, v13, :cond_7

    const/16 v21, 0x1

    goto :goto_7

    :cond_7
    const/16 v21, 0x0

    :goto_7
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "GrowthRate"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v9, v14

    add-int v27, v8, v9

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v18, v7

    move-object/from16 v19, p0

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v31

    invoke-direct/range {v18 .. v28}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;ZZLjava/lang/String;IIIIII)V

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

    add-int/2addr v2, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$7;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    const/4 v12, 0x5

    const/4 v11, 0x4

    if-eq v8, v11, :cond_9

    if-ne v8, v12, :cond_8

    goto :goto_8

    :cond_8
    const/16 v20, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    const/16 v20, 0x1

    :goto_9
    if-ne v8, v12, :cond_a

    const/16 v21, 0x1

    goto :goto_a

    :cond_a
    const/16 v21, 0x0

    :goto_a
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Manpower"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v9, v14

    add-int v27, v8, v9

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v18, v7

    move-object/from16 v19, p0

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v30

    invoke-direct/range {v18 .. v28}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;ZZLjava/lang/String;IIIIII)V

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

    add-int v24, v2, v7

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$8;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    const/4 v10, 0x7

    if-eq v7, v14, :cond_c

    if-ne v7, v10, :cond_b

    goto :goto_b

    :cond_b
    const/16 v20, 0x0

    goto :goto_c

    :cond_c
    :goto_b
    const/16 v20, 0x1

    :goto_c
    if-ne v7, v10, :cond_d

    const/16 v21, 0x1

    goto :goto_d

    :cond_d
    const/16 v21, 0x0

    :goto_d
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Cost"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    mul-int/lit8 v26, v30, 0x2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v14

    add-int v27, v7, v8

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v18, v2

    move-object/from16 v19, p0

    move/from16 v25, v3

    invoke-direct/range {v18 .. v28}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;ZZLjava/lang/String;IIIIII)V

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

    add-int/2addr v3, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v2, v1

    sub-int v2, v4, v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v14

    sub-int/2addr v2, v7

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v1

    sub-int v7, v4, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v14

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, v17

    float-to-int v9, v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_e
    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v15

    if-ge v7, v15, :cond_f

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v15

    if-nez v15, :cond_e

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_f
    :goto_f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_22

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    if-nez v7, :cond_11

    const/4 v7, 0x1

    const/4 v15, 0x0

    :goto_10
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_21

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    move v15, v7

    :cond_10
    add-int/lit8 v7, v7, 0x1

    const/4 v14, 0x6

    goto :goto_10

    :cond_11
    const/4 v10, 0x1

    if-ne v7, v10, :cond_14

    const/4 v7, 0x1

    const/4 v15, 0x0

    :goto_11
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_13

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    move v15, v7

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_13
    const/4 v14, 0x6

    goto/16 :goto_18

    :cond_14
    if-ne v7, v1, :cond_16

    const/4 v7, 0x1

    const/4 v15, 0x0

    :goto_12
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_13

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v10

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v14

    cmpg-float v10, v10, v14

    if-gez v10, :cond_15

    move v15, v7

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_16
    if-ne v7, v13, :cond_18

    const/4 v7, 0x1

    const/4 v15, 0x0

    :goto_13
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_13

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v10

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v14

    cmpl-float v10, v10, v14

    if-lez v10, :cond_17

    move v15, v7

    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_18
    if-ne v7, v11, :cond_1a

    const/4 v7, 0x1

    const/4 v15, 0x0

    :goto_14
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_13

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v10

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v14

    cmpg-float v10, v10, v14

    if-gez v10, :cond_19

    move v15, v7

    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_1a
    if-ne v7, v12, :cond_1c

    const/4 v7, 0x1

    const/4 v15, 0x0

    :goto_15
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_13

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v10

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v14

    cmpl-float v10, v10, v14

    if-lez v10, :cond_1b

    move v15, v7

    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_1c
    const/4 v14, 0x6

    if-ne v7, v14, :cond_1e

    const/4 v7, 0x1

    const/4 v15, 0x0

    :goto_16
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_21

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v10

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v18

    cmpg-float v10, v10, v18

    if-gez v10, :cond_1d

    move v15, v7

    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_1e
    const/4 v10, 0x7

    if-ne v7, v10, :cond_20

    const/4 v7, 0x1

    const/4 v15, 0x0

    :goto_17
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_21

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v10

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v18

    cmpl-float v10, v10, v18

    if-lez v10, :cond_1f

    move v15, v7

    :cond_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_20
    const/4 v15, 0x0

    :cond_21
    :goto_18
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$9;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v20, v7, 0x2

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object v7, v10

    move-object v1, v8

    move-object/from16 v8, p0

    move/from16 v23, v9

    move-object/from16 v9, v18

    move/from16 v18, v4

    move-object v4, v10

    const/16 v17, 0x7

    move/from16 v10, v19

    move/from16 v19, v11

    move/from16 v11, v20

    move/from16 v20, v12

    move v12, v0

    move/from16 v24, v13

    move v13, v3

    move/from16 v25, v14

    move v14, v2

    move/from16 v26, v2

    move v2, v15

    move v15, v5

    move/from16 v16, v21

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;IIIIIII)V

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

    new-instance v15, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_GrowthRate;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v10, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v7, v15

    move v11, v4

    move v12, v3

    move/from16 v13, v26

    move-object/from16 v33, v14

    move v14, v5

    move/from16 v21, v0

    move-object v0, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_GrowthRate;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v7

    add-int/2addr v4, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$10;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v15, v33

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v8

    const/16 v9, 0x64

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v11, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v7, v0

    move-object/from16 v8, p0

    move v12, v4

    move v13, v3

    move/from16 v14, v23

    move-object/from16 v34, v15

    move v15, v5

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v7

    add-int/2addr v4, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$11;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v15, v34

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCostLegacy(I)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object v7, v0

    move-object/from16 v8, p0

    move v11, v4

    move v12, v3

    move/from16 v13, v23

    move v14, v5

    move/from16 v28, v5

    move-object v5, v15

    move/from16 v15, v16

    move/from16 v16, v27

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v7

    add-int v11, v4, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$12;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v15

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v7, v0

    move/from16 v14, v28

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v5

    add-int/2addr v3, v0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v8, v1

    move/from16 v10, v17

    move/from16 v4, v18

    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v0, v21

    move/from16 v9, v23

    move/from16 v13, v24

    move/from16 v14, v25

    move/from16 v2, v26

    move/from16 v5, v28

    const/4 v1, 0x2

    goto/16 :goto_f

    :cond_22
    move/from16 v18, v4

    move/from16 v24, v13

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int v4, v32, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v7, v18

    const/4 v9, 0x0

    invoke-direct {v0, v9, v9, v7, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v29

    move v3, v4

    move v4, v7

    move v7, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->drawScrollPositionAlways:Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "IncreaseManpower"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setInGame_CivOptions_Title(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getPosY()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    const/4 v10, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    move-object v5, p1

    invoke-static/range {v5 .. v12}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civOptionsOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->civOptionsOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v7, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->civOptionsOver:I

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

.method public onHovered()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameCourt()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime2:J

    return-void
.end method
