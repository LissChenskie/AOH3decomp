.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Ranking.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iSortID:I = 0x0

.field public static lTime:J = 0x0L

.field public static lTime2:J = 0x0L

.field public static sSearch:Ljava/lang/String; = ""


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

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v1

    sub-int v7, v4, v7

    int-to-float v7, v7

    const v16, 0x3e19999a    # 0.15f

    mul-float v7, v7, v16

    float-to-int v15, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v1

    sub-int v7, v4, v7

    int-to-float v7, v7

    const v28, 0x3ecccccd    # 0.4f

    mul-float v7, v7, v28

    float-to-int v14, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v1

    sub-int v7, v4, v7

    int-to-float v7, v7

    mul-float v7, v7, v16

    float-to-int v13, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v7, v4, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v7, v8

    div-int/lit8 v18, v7, 0x2

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Search"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ": "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v19, v7, 0x2

    move-object v7, v12

    move-object/from16 v8, p0

    move-object v1, v11

    move/from16 v11, v19

    move/from16 v29, v2

    move-object v2, v12

    move v12, v0

    move/from16 v30, v13

    move v13, v5

    move/from16 v31, v14

    move/from16 v14, v18

    move/from16 v25, v15

    move/from16 v15, v17

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v9

    if-ge v7, v9, :cond_1

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v9

    if-lez v9, :cond_0

    add-int/lit8 v8, v8, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    new-instance v15, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Style;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Civilizations"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->council:I

    add-int v7, v0, v18

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v11, v7, v8

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v19

    move-object v7, v15

    move-object v8, v1

    move v12, v5

    move/from16 v13, v18

    move-object v1, v14

    move/from16 v14, v17

    move-object v2, v15

    move/from16 v15, v19

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Style;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v5, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$2;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    if-eqz v8, :cond_3

    if-ne v8, v15, :cond_2

    goto :goto_1

    :cond_2
    const/16 v19, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v19, v15

    :goto_2
    if-ne v8, v15, :cond_4

    move/from16 v20, v15

    goto :goto_3

    :cond_4
    const/16 v20, 0x0

    :goto_3
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Ranking"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x6

    mul-int/2addr v9, v14

    add-int v26, v8, v9

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v17, v7

    move-object/from16 v18, p0

    move/from16 v23, v2

    move/from16 v24, v5

    invoke-direct/range {v17 .. v27}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v15

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    add-int/2addr v2, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$3;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/4 v13, 0x3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_6

    if-ne v8, v13, :cond_5

    goto :goto_4

    :cond_5
    const/16 v19, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    move/from16 v19, v15

    :goto_5
    if-ne v8, v13, :cond_7

    move/from16 v20, v15

    goto :goto_6

    :cond_7
    const/16 v20, 0x0

    :goto_6
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Name"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v9, v14

    add-int v26, v8, v9

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v17, v7

    move-object/from16 v18, p0

    move/from16 v23, v2

    move/from16 v24, v5

    move/from16 v25, v31

    invoke-direct/range {v17 .. v27}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v15

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    add-int/2addr v2, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$4;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/4 v12, 0x4

    const/4 v11, 0x5

    if-eq v8, v12, :cond_9

    if-ne v8, v11, :cond_8

    goto :goto_7

    :cond_8
    const/16 v19, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    move/from16 v19, v15

    :goto_8
    if-ne v8, v11, :cond_a

    move/from16 v20, v15

    goto :goto_9

    :cond_a
    const/16 v20, 0x0

    :goto_9
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Prestige"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v9, v14

    add-int v26, v8, v9

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v17, v7

    move-object/from16 v18, p0

    move/from16 v23, v2

    move/from16 v24, v5

    move/from16 v25, v30

    invoke-direct/range {v17 .. v27}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v15

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    add-int/2addr v2, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$5;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/4 v10, 0x7

    if-eq v8, v14, :cond_c

    if-ne v8, v10, :cond_b

    goto :goto_a

    :cond_b
    const/16 v19, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    move/from16 v19, v15

    :goto_b
    if-ne v8, v10, :cond_d

    move/from16 v20, v15

    goto :goto_c

    :cond_d
    const/16 v20, 0x0

    :goto_c
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Economy"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v9, v14

    add-int v26, v8, v9

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v17, v7

    move-object/from16 v18, p0

    move/from16 v23, v2

    move/from16 v24, v5

    move/from16 v25, v30

    invoke-direct/range {v17 .. v27}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v15

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    add-int v23, v2, v7

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$6;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/16 v9, 0x8

    const/16 v8, 0x9

    if-eq v7, v9, :cond_f

    if-ne v7, v8, :cond_e

    goto :goto_d

    :cond_e
    const/16 v19, 0x0

    goto :goto_e

    :cond_f
    :goto_d
    move/from16 v19, v15

    :goto_e
    if-ne v7, v8, :cond_10

    move/from16 v20, v15

    goto :goto_f

    :cond_10
    const/16 v20, 0x0

    :goto_f
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Population"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v14

    add-int v26, v7, v8

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v17, v2

    move-object/from16 v18, p0

    move/from16 v24, v5

    move/from16 v25, v30

    invoke-direct/range {v17 .. v27}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v15

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v5, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v7, 0x2

    mul-int/2addr v2, v7

    sub-int v2, v4, v2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v14

    sub-int/2addr v2, v8

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v8, v7

    sub-int v8, v4, v8

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v17, 0x6

    sub-int v8, v8, v17

    int-to-float v8, v8

    mul-float v8, v8, v28

    float-to-int v8, v8

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v17, v17, 0x2

    sub-int v7, v4, v17

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v17, 0x6

    sub-int v7, v7, v17

    int-to-float v7, v7

    mul-float v7, v7, v16

    float-to-int v7, v7

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v16

    if-eqz v16, :cond_11

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_10

    :cond_11
    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_10
    move/from16 v27, v16

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v19, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->sSearch:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_13

    sget-object v19, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->sSearch:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    move v12, v15

    :goto_11
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v13

    if-ge v12, v13, :cond_15

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v13

    if-lez v13, :cond_12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-ltz v13, :cond_12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v15, -0x1

    if-eq v13, v15, :cond_12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v12, v12, 0x1

    const/4 v15, 0x1

    goto :goto_11

    :cond_13
    const/4 v11, 0x1

    :goto_12
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v12

    if-ge v11, v12, :cond_15

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v12

    if-lez v12, :cond_14

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-ltz v12, :cond_14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_15
    :goto_13
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2e

    sget v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    if-nez v11, :cond_18

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_14
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_17

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-le v13, v15, :cond_16

    move v12, v11

    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    :cond_17
    move v13, v12

    :goto_15
    const/4 v15, 0x6

    goto/16 :goto_1f

    :cond_18
    const/4 v15, 0x1

    if-ne v11, v15, :cond_1a

    move v11, v15

    const/4 v12, 0x0

    :goto_16
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_17

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-ge v13, v15, :cond_19

    move v12, v11

    :cond_19
    add-int/lit8 v11, v11, 0x1

    const/4 v15, 0x1

    goto :goto_16

    :cond_1a
    const/4 v12, 0x2

    if-ne v11, v12, :cond_1c

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_17
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_17

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1b

    move v12, v11

    :cond_1b
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_1c
    const/4 v13, 0x3

    if-ne v11, v13, :cond_1e

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_18
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_17

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-static/range {v21 .. v21}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v15, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1d

    move v12, v11

    :cond_1d
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x3

    goto :goto_18

    :cond_1e
    const/4 v12, 0x4

    if-ne v11, v12, :cond_21

    const/4 v11, 0x0

    const/4 v13, 0x1

    :goto_19
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_20

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    cmpg-float v12, v15, v12

    if-gez v12, :cond_1f

    move v11, v13

    :cond_1f
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x4

    goto :goto_19

    :cond_20
    move v13, v11

    goto/16 :goto_15

    :cond_21
    const/4 v12, 0x5

    if-ne v11, v12, :cond_23

    const/4 v11, 0x0

    const/4 v13, 0x1

    :goto_1a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_20

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    cmpl-float v12, v15, v12

    if-lez v12, :cond_22

    move v11, v13

    :cond_22
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x5

    goto :goto_1a

    :cond_23
    const/4 v15, 0x6

    if-ne v11, v15, :cond_26

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_1b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_25

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    cmpg-float v13, v13, v18

    if-gez v13, :cond_24

    move v12, v11

    :cond_24
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b

    :cond_25
    move v13, v12

    goto/16 :goto_1f

    :cond_26
    const/4 v12, 0x7

    if-ne v11, v12, :cond_29

    const/4 v11, 0x0

    const/4 v13, 0x1

    :goto_1c
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v13, v12, :cond_28

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    cmpl-float v12, v12, v18

    if-lez v12, :cond_27

    move v11, v13

    :cond_27
    add-int/lit8 v13, v13, 0x1

    goto :goto_1c

    :cond_28
    move v13, v11

    goto :goto_1f

    :cond_29
    const/16 v12, 0x8

    if-ne v11, v12, :cond_2b

    const/4 v11, 0x0

    const/4 v13, 0x1

    :goto_1d
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v13, v12, :cond_28

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v12, v18, v24

    if-gez v12, :cond_2a

    move v11, v13

    :cond_2a
    add-int/lit8 v13, v13, 0x1

    goto :goto_1d

    :cond_2b
    const/16 v12, 0x9

    if-ne v11, v12, :cond_2d

    const/4 v11, 0x0

    const/4 v13, 0x1

    :goto_1e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v13, v12, :cond_28

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v12, v18, v24

    if-lez v12, :cond_2c

    move v11, v13

    :cond_2c
    add-int/lit8 v13, v13, 0x1

    goto :goto_1e

    :cond_2d
    const/4 v13, 0x0

    :goto_1f
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$7;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRanking_IMG_STAR_CIVID(I)I

    move-result v15

    sget v18, Laoc/kingdoms/lukasz/textures/Images;->rankGold:I

    invoke-static/range {v18 .. v18}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v18

    move/from16 v28, v7

    move-object v7, v12

    move/from16 v30, v8

    const/16 v31, 0x9

    move-object/from16 v8, p0

    move/from16 v32, v4

    move-object v4, v9

    const/16 v33, 0x8

    move-object v9, v11

    move-object v11, v10

    const/16 v34, 0x7

    move v10, v15

    move-object v15, v11

    const/16 v35, 0x5

    move v11, v0

    move/from16 v36, v3

    move-object v3, v12

    const/16 v37, 0x4

    move v12, v5

    move/from16 v38, v5

    move v5, v13

    const/16 v39, 0x3

    move v13, v2

    move/from16 v40, v2

    move-object v2, v14

    const/16 v41, 0x6

    move/from16 v14, v27

    move-object/from16 v42, v2

    move-object/from16 v43, v15

    const/4 v2, 0x1

    move/from16 v15, v18

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v3, v0

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$8;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x2

    mul-int/lit8 v21, v8, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v17, v7

    move-object/from16 v18, p0

    move/from16 v22, v3

    move/from16 v23, v38

    move/from16 v24, v30

    move/from16 v25, v27

    invoke-direct/range {v17 .. v26}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$9;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    invoke-static {v9, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v20, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v16, v7

    move-object/from16 v17, p0

    move/from16 v21, v3

    move/from16 v22, v38

    move/from16 v23, v28

    move/from16 v24, v27

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$10;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, v43

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v11, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v16, v7

    move/from16 v21, v3

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int v21, v3, v7

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$11;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, v42

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int v3, v38, v3

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v10, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v8, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v5, v3

    move-object v9, v4

    move-object v14, v8

    move/from16 v7, v28

    move/from16 v8, v30

    move/from16 v4, v32

    move/from16 v3, v36

    move/from16 v2, v40

    goto/16 :goto_13

    :cond_2e
    move/from16 v36, v3

    move/from16 v32, v4

    const/16 v39, 0x3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_20
    if-ge v1, v0, :cond_30

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_2f

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_30
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v36

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v4, v32

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$12;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v3, 0x0

    sget-object v3, Lcom/google/android/gms/internal/tasks/Vhe/SwmJtrccN;->qgsGYSmeQc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    move-object v7, v1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;Ljava/lang/String;ZZI)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move v9, v2

    move/from16 v2, v29

    move/from16 v3, v36

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->drawScrollPositionAlways:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v3, v0

    goto :goto_0

    :cond_0
    move/from16 v3, p3

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v2, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getPosX()I

    move-result v0

    add-int v6, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getPosY()I

    move-result v0

    add-int v7, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    const/4 v10, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    move-object v5, p1

    invoke-static/range {v5 .. v12}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->goodsOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->goodsOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v7, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getPosY()I

    move-result v0

    add-int v8, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->goodsOver:I

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

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->lTime2:J

    return-void
.end method
