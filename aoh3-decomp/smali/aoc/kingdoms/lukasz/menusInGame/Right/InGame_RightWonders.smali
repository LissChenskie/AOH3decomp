.class public Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_RightWonders.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iReligionID:I = -0x1

.field public static iSortID:I

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

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v2, v0, v4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

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

    add-int v3, v0, v1

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
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->wonderFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x2

    mul-int/2addr v1, v5

    add-int v20, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v0, v4, v0

    sub-int v29, v0, v20

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v0, v4, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->wonderFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->wonderFrame:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v7, v8

    div-int/2addr v7, v5

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders$1;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->iSortID:I

    const/4 v10, 0x1

    const/4 v15, 0x0

    if-eqz v9, :cond_2

    if-ne v9, v10, :cond_1

    goto :goto_1

    :cond_1
    move v14, v15

    goto :goto_2

    :cond_2
    :goto_1
    move v14, v10

    :goto_2
    if-ne v9, v10, :cond_3

    move v9, v10

    goto :goto_3

    :cond_3
    move v9, v15

    :goto_3
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Name"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, -0x1

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x6

    add-int v21, v12, v13

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v19, 0x0

    move-object v12, v8

    move-object/from16 v13, p0

    move v15, v9

    move/from16 v18, v1

    invoke-direct/range {v12 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v8

    add-int v27, v1, v8

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders$2;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->iSortID:I

    const/4 v15, 0x3

    if-eq v8, v5, :cond_5

    if-ne v8, v15, :cond_4

    goto :goto_4

    :cond_4
    const/16 v23, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    move/from16 v23, v10

    :goto_5
    if-ne v8, v15, :cond_6

    move/from16 v24, v10

    goto :goto_6

    :cond_6
    const/16 v24, 0x0

    :goto_6
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Province"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, -0x1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x6

    add-int v30, v8, v9

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v28, 0x0

    move-object/from16 v21, v1

    move-object/from16 v22, p0

    invoke-direct/range {v21 .. v31}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v8

    const/4 v14, 0x0

    add-int/lit8 v12, v1, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v8, v14

    :goto_7
    sget v9, Laoc/kingdoms/lukasz/map/WondersManager;->wondersSize:I

    if-ge v8, v9, :cond_8

    sget-object v9, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v9, v9, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ProvinceID:I

    if-ltz v9, :cond_7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_13

    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_12

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->iSortID:I

    if-nez v8, :cond_a

    move v9, v10

    move v8, v14

    :goto_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_11

    sget-object v11, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->Name:Ljava/lang/String;

    sget-object v13, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->Name:Ljava/lang/String;

    invoke-static {v11, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    move v8, v9

    :cond_9
    add-int/lit8 v9, v9, 0x1

    const/4 v14, 0x0

    goto :goto_9

    :cond_a
    if-ne v8, v10, :cond_c

    move v9, v10

    const/4 v8, 0x0

    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_11

    sget-object v11, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->Name:Ljava/lang/String;

    sget-object v13, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->Name:Ljava/lang/String;

    invoke-static {v11, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    move v8, v9

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_c
    if-ne v8, v5, :cond_e

    move v9, v10

    const/4 v8, 0x0

    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_11

    sget-object v11, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v11, v11, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v13, v13, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ProvinceID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    move v8, v9

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_e
    if-ne v8, v15, :cond_10

    move v9, v10

    const/4 v8, 0x0

    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_11

    sget-object v11, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v11, v11, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v13, v13, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ProvinceID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    move v8, v9

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_10
    const/4 v8, 0x0

    :cond_11
    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v11, v5

    add-int/2addr v9, v11

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders$3;

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v13, v5

    add-int v19, v12, v13

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v20

    sget-object v13, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v13, v13, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ProvinceID:I

    move-object/from16 v16, v11

    move-object/from16 v17, p0

    move/from16 v18, v9

    move/from16 v21, v13

    invoke-direct/range {v16 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;IIII)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v10

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v13, v5

    add-int/2addr v11, v13

    add-int/2addr v9, v11

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders$4;

    sget-object v13, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->Name:Ljava/lang/String;

    sget v33, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v34, v14, 0x2

    sget-object v14, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v10, v10, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ProvinceID:I

    move-object/from16 v30, v11

    move-object/from16 v31, p0

    move-object/from16 v32, v13

    move/from16 v35, v9

    move/from16 v36, v12

    move/from16 v37, v0

    move/from16 v38, v7

    move/from16 v39, v10

    invoke-direct/range {v30 .. v39}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders$5;

    sget-object v11, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v11, v11, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v32

    sget v33, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v34, v11, 0x2

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int v36, v11, v7

    sget-object v11, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v11, v11, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ProvinceID:I

    move-object/from16 v30, v10

    move/from16 v39, v11

    invoke-direct/range {v30 .. v39}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->wonderFrame:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v10

    add-int/2addr v12, v9

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v10, 0x1

    const/4 v14, 0x0

    goto/16 :goto_8

    :cond_12
    move v5, v14

    goto :goto_d

    :cond_13
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "None"

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v10, -0x1

    mul-int/lit8 v1, v11, 0x2

    sub-int v13, v4, v1

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v0

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    :goto_d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v1, v5

    move v7, v1

    :goto_e
    if-ge v1, v0, :cond_15

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v8

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_14

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v7

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_15
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v8

    sub-int/2addr v1, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v15

    add-int/2addr v1, v8

    sub-int/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v5, v5, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders$6;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Wonders"

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Total"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v5, Laoc/kingdoms/lukasz/map/WondersManager;->wondersSize:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    move-object v9, v1

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move v5, v8

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    move-object/from16 v1, p0

    iput v0, v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->scrollExtraPosX:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->getPosX()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->getPosX()I

    move-result v0

    add-int v1, v0, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->getPosY()I

    move-result v0

    add-int v2, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->getPosX()I

    move-result v1

    add-int v2, v1, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightWonders;->lTime2:J

    return-void
.end method
