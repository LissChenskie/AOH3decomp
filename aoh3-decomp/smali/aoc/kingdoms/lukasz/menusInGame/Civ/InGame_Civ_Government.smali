.class public Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Civ_Government.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iGovID:I = -0x1

.field public static iSortID:I = 0x2

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 28

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int v12, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_0
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v1, v2

    sub-int v1, v4, v1

    int-to-float v1, v1

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v7

    float-to-int v1, v1

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v8, v2

    sub-int v8, v4, v8

    int-to-float v8, v8

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    float-to-int v15, v8

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v8, v2

    sub-int v8, v4, v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x3

    mul-int/2addr v10, v14

    sub-int/2addr v8, v10

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v13, v8

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v2

    sub-int v7, v4, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v14

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v9

    float-to-int v11, v7

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v19, v8, v9

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government$1;

    sget v18, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->iGovID:I

    mul-int/lit8 v9, v19, 0x2

    sub-int v21, v4, v9

    move-object/from16 v16, v8

    move-object/from16 v17, p0

    move/from16 v20, v7

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;IIIII)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v8, v9

    add-int v17, v7, v8

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government$2;

    sget-object v16, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->GOVERNMENTS_CIVS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Civilizations"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    mul-int/lit8 v7, v12, 0x2

    sub-int v20, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v21, v7, 0x3

    const/16 v22, 0x1

    move-object v7, v9

    move-object/from16 v8, p0

    move-object v2, v9

    move-object/from16 v9, v16

    move/from16 v24, v3

    move v3, v10

    move-object/from16 v10, v18

    move/from16 v25, v11

    move-object/from16 v11, v19

    move/from16 v26, v13

    move/from16 v13, v17

    move/from16 v14, v20

    move/from16 v27, v15

    move/from16 v15, v21

    move/from16 v16, v22

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int v2, v17, v2

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government$3;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->iSortID:I

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    if-ne v9, v3, :cond_1

    goto :goto_1

    :cond_1
    move v15, v10

    goto :goto_2

    :cond_2
    :goto_1
    move v15, v3

    :goto_2
    if-ne v9, v3, :cond_3

    move/from16 v16, v3

    goto :goto_3

    :cond_3
    move/from16 v16, v10

    :goto_3
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Name"

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, -0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v22, v9, v11

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v13, v8

    move-object/from16 v14, p0

    move/from16 v19, v7

    move/from16 v20, v2

    move/from16 v21, v1

    invoke-direct/range {v13 .. v23}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int v19, v7, v1

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government$4;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->iSortID:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    goto :goto_4

    :cond_4
    move v15, v10

    goto :goto_5

    :cond_5
    const/4 v8, 0x3

    :goto_4
    move v15, v3

    :goto_5
    if-ne v7, v8, :cond_6

    move/from16 v16, v3

    goto :goto_6

    :cond_6
    move/from16 v16, v10

    :goto_6
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Population"

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x6

    add-int v22, v7, v9

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v13, v1

    move-object/from16 v14, p0

    move/from16 v20, v2

    move/from16 v21, v27

    invoke-direct/range {v13 .. v23}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int v16, v2, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v7, v10

    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v9

    const-wide/16 v11, 0x0

    if-ge v7, v9, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v9

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->iGovID:I

    if-ne v9, v13, :cond_7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    :goto_9
    if-ltz v7, :cond_a

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v9, v13, v11

    if-gtz v9, :cond_9

    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v7, v7, -0x1

    goto :goto_9

    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_14

    move/from16 v7, v16

    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_15

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->iSortID:I

    if-nez v9, :cond_c

    move v9, v3

    move v11, v10

    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_13

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    move v11, v9

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_c
    if-ne v9, v3, :cond_e

    move v9, v3

    move v11, v10

    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_13

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    move v11, v9

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_e
    const/4 v11, 0x2

    if-ne v9, v11, :cond_10

    move v9, v3

    move v11, v10

    :goto_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_13

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_f

    move v11, v9

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_10
    if-ne v9, v8, :cond_12

    move v9, v3

    move v11, v10

    :goto_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_13

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-lez v12, :cond_11

    move v11, v9

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_12
    move v11, v10

    :cond_13
    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v12

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government$5;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v17, v13, 0x2

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object v13, v12

    move-object/from16 v14, p0

    move/from16 v18, v9

    move/from16 v19, v7

    move/from16 v20, v26

    move/from16 v21, v0

    invoke-direct/range {v13 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v3

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int v18, v9, v12

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government$6;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v17, -0x1

    move-object v13, v9

    move/from16 v20, v25

    invoke-direct/range {v13 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v12

    add-int/2addr v7, v9

    invoke-interface {v1, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v2, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_14
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "None"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v14, -0x1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v1, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x2

    mul-int/2addr v2, v7

    add-int/2addr v1, v2

    sub-int v17, v4, v1

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    :cond_15
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v1, v10

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_17

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v3, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    if-ge v2, v3, :cond_16

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

    add-int/2addr v2, v3

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_17
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v5

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v1, v8

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v10, v10, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government$7;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Government"

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v11, v1

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v24

    move v3, v5

    move v5, v7

    move v7, v8

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

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

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->lTime2:J

    return-void
.end method
