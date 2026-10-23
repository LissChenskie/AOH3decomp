.class public Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Civ_UnlockedTechnologies.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 35

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v4, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v0, 0x2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v6

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v6

    if-eqz v6, :cond_0

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_0

    :cond_0
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_0
    sget v8, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v8, :cond_1

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-lez v8, :cond_1

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    sput v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    goto :goto_1

    :cond_1
    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-gtz v8, :cond_2

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    :cond_2
    :goto_1
    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x4

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    float-to-int v15, v8

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$1;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    const/16 v17, 0x0

    move-object v8, v14

    move-object/from16 v9, p0

    move v12, v0

    move/from16 v18, v3

    move-object v3, v13

    move v13, v2

    move/from16 v19, v4

    move-object v4, v14

    move v14, v15

    move/from16 v20, v15

    move v15, v6

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;Ljava/lang/String;IIIIIII)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    const/4 v15, 0x1

    sub-int/2addr v4, v15

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v8

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$2;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x41200000    # 10.0f

    cmpg-float v9, v4, v9

    const/16 v13, 0xa

    if-gez v9, :cond_3

    const/16 v9, 0x64

    goto :goto_2

    :cond_3
    const/high16 v9, 0x42c80000    # 100.0f

    cmpg-float v9, v4, v9

    if-gez v9, :cond_4

    move v9, v13

    goto :goto_2

    :cond_4
    move v9, v15

    :goto_2
    invoke-static {v4, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    const/16 v17, 0x0

    move-object v8, v14

    move-object/from16 v9, p0

    move v12, v0

    move v4, v13

    move v13, v2

    move-object v4, v14

    move/from16 v14, v20

    move/from16 v21, v5

    move v5, v15

    move v15, v6

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;Ljava/lang/String;IIIIIII)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v8

    add-int v12, v0, v4

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$3;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    move-object v8, v0

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;Ljava/lang/String;IIIIIII)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$4;

    sget-object v10, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_UNLOCKED_TECHS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Civilizations"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    mul-int/lit8 v6, v1, 0x2

    sub-int v6, v21, v6

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v16, v8, 0x3

    const/16 v17, 0x1

    move-object v8, v4

    move v13, v1

    move v14, v0

    move v15, v6

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v8

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v8, v6, v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->techGray:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    sub-int v17, v8, v9

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v21, v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v8, v9

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->techGray:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$5;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->iSortID:I

    const/4 v15, 0x0

    if-eqz v10, :cond_6

    if-ne v10, v5, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v24, v15

    goto :goto_4

    :cond_6
    :goto_3
    move/from16 v24, v5

    :goto_4
    if-ne v10, v5, :cond_7

    move/from16 v25, v5

    goto :goto_5

    :cond_7
    move/from16 v25, v15

    :goto_5
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "ResearchCost"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v31, v10, v11

    sget v32, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v22, v9

    move-object/from16 v23, p0

    move/from16 v28, v4

    move/from16 v29, v0

    move/from16 v30, v8

    invoke-direct/range {v22 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    add-int v12, v4, v9

    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$6;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "UnlockedTechnologies"

    invoke-virtual {v9, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v21, v9

    sub-int v16, v9, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x6

    add-int v20, v8, v9

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v8, v4

    move-object/from16 v9, p0

    move v13, v0

    move-object/from16 v33, v14

    move/from16 v14, v16

    move/from16 v15, v20

    move/from16 v16, v22

    invoke-direct/range {v8 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;Ljava/lang/String;IIIIII)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v8

    add-int/2addr v4, v0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v0, :cond_9

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_9
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    :goto_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->iSortID:I

    if-nez v0, :cond_b

    move v0, v5

    const/4 v6, 0x0

    :goto_8
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_e

    sget-object v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->getResearchCost()I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->getResearchCost()I

    move-result v9

    if-ge v8, v9, :cond_a

    move v6, v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    if-ne v0, v5, :cond_d

    move v0, v5

    const/4 v6, 0x0

    :goto_9
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_e

    sget-object v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->getResearchCost()I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->getResearchCost()I

    move-result v9

    if-le v8, v9, :cond_c

    move v6, v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    :cond_e
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$7;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getResearchCost(II)F

    move-result v9

    const/16 v14, 0xa

    invoke-static {v9, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->techGray:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v16

    move-object v8, v0

    move-object/from16 v9, p0

    move v12, v1

    move v13, v4

    move/from16 v20, v14

    move/from16 v14, v17

    move-object/from16 v34, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;Ljava/lang/String;IIIII)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v8

    add-int v26, v1, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$8;

    sget v24, Laoc/kingdoms/lukasz/textures/Images;->techResearched:I

    move-object/from16 v8, v34

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v28, 0x0

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->techQueue:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->getTechIsInQueue(I)I

    move-result v29

    move-object/from16 v22, v0

    move-object/from16 v23, p0

    move/from16 v27, v4

    invoke-direct/range {v22 .. v29}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;IIIIZI)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v4, v0

    invoke-interface {v8, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v15, v8

    goto/16 :goto_7

    :cond_f
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "None"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v11, -0x1

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v8, v0

    move v12, v1

    move v13, v4

    move v14, v6

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    :cond_10
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v19

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v5, v21

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v5, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$9;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v10

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v8, v2

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

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

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;->lTime2:J

    return-void
.end method
