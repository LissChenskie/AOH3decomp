.class public Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Court_Buildings2.java"


# static fields
.field public static SHOW_BONUSES:Z = true

.field public static modeID:I = -0x1

.field public static oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

.field public static saveMenuPos_X:I

.field public static saveMenuPos_Y:I

.field public static savePos_X:I

.field public static savePos_Y:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 56

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

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX()I

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

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v15, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    sput-object v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v15, v7

    div-int/lit8 v22, v7, 0x2

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v9

    if-ge v7, v9, :cond_0

    invoke-virtual {v14, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v2

    sub-int v7, v4, v7

    div-int/lit8 v7, v7, 0x4

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$1;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v11, 0x0

    sget-object v11, Landroidx/lifecycle/livedata/core/jzw/jkEBdieJhbh;->XgQ:Ljava/lang/String;

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    const/4 v12, -0x1

    const/4 v11, 0x1

    if-ne v10, v12, :cond_1

    move/from16 v30, v11

    goto :goto_1

    :cond_1
    const/16 v30, 0x0

    :goto_1
    const/16 v27, 0x0

    move-object/from16 v23, v9

    move-object/from16 v24, p0

    move/from16 v28, v7

    invoke-direct/range {v23 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$2;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v13, 0x0

    sget-object v13, Laoc/kingdoms/lukasz/map/civilization/stats/LQy/lJxd;->jEUYCu:Ljava/lang/String;

    invoke-virtual {v10, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v26, v10, v7

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    if-nez v10, :cond_2

    move/from16 v30, v11

    goto :goto_2

    :cond_2
    const/16 v30, 0x0

    :goto_2
    const/16 v27, 0x0

    move-object/from16 v23, v9

    move-object/from16 v24, p0

    move/from16 v28, v7

    invoke-direct/range {v23 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$3;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Military"

    invoke-virtual {v10, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v17, v7, 0x2

    add-int v26, v10, v17

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    if-ne v10, v11, :cond_3

    move/from16 v30, v11

    goto :goto_3

    :cond_3
    const/16 v30, 0x0

    :goto_3
    const/16 v27, 0x0

    move-object/from16 v23, v9

    move-object/from16 v24, p0

    move/from16 v28, v7

    invoke-direct/range {v23 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$4;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Economy"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v18, v7, 0x3

    add-int v26, v10, v18

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_4

    const/16 v30, 0x1

    goto :goto_4

    :cond_4
    const/16 v30, 0x0

    :goto_4
    const/16 v27, 0x0

    move-object/from16 v23, v9

    move-object/from16 v24, p0

    move/from16 v28, v7

    invoke-direct/range {v23 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    const/16 v16, 0x0

    add-int/lit8 v26, v7, 0x0

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$5;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->council:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int v21, v7, v8

    const/16 v23, 0x1

    move-object v7, v10

    move-object/from16 v8, p0

    move/from16 v27, v3

    move-object v3, v9

    move-object v9, v12

    move-object v12, v10

    move/from16 v10, v19

    move/from16 v28, v1

    move-object/from16 v31, v11

    const/4 v1, 0x1

    move v11, v0

    move-object/from16 v30, v3

    move-object v1, v12

    const/4 v3, -0x1

    move/from16 v12, v26

    move-object/from16 v32, v13

    move/from16 v13, v22

    move-object/from16 v33, v14

    move/from16 v14, v20

    move/from16 v34, v15

    move/from16 v15, v21

    move/from16 v16, v23

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$6;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Bonuses"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-boolean v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->SHOW_BONUSES:Z

    if-eqz v7, :cond_5

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->v:I

    goto :goto_5

    :cond_5
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->x:I

    :goto_5
    move/from16 v19, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v0

    add-int v20, v7, v22

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->council:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int v24, v7, v8

    const/16 v25, 0x1

    move-object/from16 v16, v1

    move-object/from16 v17, p0

    move/from16 v21, v26

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int v26, v26, v1

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    if-ne v13, v3, :cond_6

    const/4 v13, 0x0

    :cond_6
    move v1, v13

    :goto_6
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    if-ne v7, v3, :cond_7

    const/4 v8, 0x3

    goto :goto_7

    :cond_7
    add-int/lit8 v8, v7, 0x1

    :goto_7
    const-string v14, "None"

    const-string v13, " / "

    if-ge v1, v8, :cond_17

    new-instance v15, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    if-nez v1, :cond_8

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v12, v32

    invoke-virtual {v7, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_8
    move-object v8, v7

    move-object/from16 v11, v31

    goto :goto_9

    :cond_8
    move-object/from16 v12, v32

    const/4 v7, 0x1

    if-ne v1, v7, :cond_9

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_9
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v11, v31

    invoke-virtual {v7, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    :goto_9
    const/4 v9, -0x1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int v16, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v17, 0x6

    add-int v17, v7, v17

    move-object v7, v15

    move-object/from16 v18, v11

    move/from16 v11, v26

    move-object/from16 v19, v12

    move/from16 v12, v16

    move-object v3, v13

    move/from16 v13, v17

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v26, v26, v7

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_a
    sget v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge v15, v7, :cond_15

    move v7, v13

    const/4 v13, 0x0

    :goto_b
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v13, v8, :cond_14

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    if-ne v8, v1, :cond_13

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-nez v8, :cond_13

    move-object/from16 v12, v33

    invoke-virtual {v12, v15, v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v8

    if-eqz v8, :cond_12

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz v8, :cond_a

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v9

    if-ne v8, v9, :cond_12

    :cond_a
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz v8, :cond_b

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v9

    if-ne v8, v9, :cond_12

    :cond_b
    add-int/lit8 v21, v7, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_c
    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v10

    if-ge v7, v10, :cond_e

    sget-object v10, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v10, v10, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->SeaAccessRequired:Z

    if-eqz v10, :cond_c

    invoke-virtual {v12, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v10

    if-gez v10, :cond_c

    goto :goto_d

    :cond_c
    invoke-virtual {v12, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v15, v13}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v10

    if-eqz v10, :cond_d

    add-int/lit8 v8, v8, 0x1

    :cond_d
    add-int/lit8 v9, v9, 0x1

    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_e
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$7;

    const/16 v16, 0x1

    const/16 v17, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v10, v30

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object v7, v11

    move-object/from16 v8, p0

    const/4 v9, 0x1

    move-object/from16 v35, v10

    move v10, v15

    move-object/from16 v36, v11

    move v11, v13

    move-object/from16 v37, v12

    move v12, v0

    move/from16 v38, v13

    move/from16 v13, v26

    move-object/from16 v39, v14

    move/from16 v14, v34

    move/from16 v40, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v23

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;ZIIIIIZZLjava/lang/String;)V

    move-object/from16 v7, v36

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v7, v26, v7

    sget-boolean v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->SHOW_BONUSES:Z

    if-eqz v8, :cond_11

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v8, v0

    move/from16 v10, v38

    move/from16 v9, v40

    invoke-static {v9, v10, v8, v4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getBuildingBonuses(IIII)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_10

    const/4 v13, 0x0

    :goto_e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v13, v11, :cond_f

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v11

    add-int/2addr v11, v5

    add-int/2addr v7, v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_f
    sub-int v8, v7, v26

    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sub-int v12, v7, v8

    move/from16 v15, v34

    invoke-direct {v11, v0, v12, v15, v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v26, v7, v8

    goto :goto_10

    :cond_10
    move/from16 v15, v34

    goto :goto_f

    :cond_11
    move/from16 v15, v34

    move/from16 v10, v38

    move/from16 v9, v40

    :goto_f
    move/from16 v26, v7

    :goto_10
    move/from16 v7, v21

    goto :goto_12

    :cond_12
    move-object/from16 v37, v12

    move v10, v13

    move-object/from16 v39, v14

    move v9, v15

    move-object/from16 v35, v30

    goto :goto_11

    :cond_13
    move v10, v13

    move-object/from16 v39, v14

    move v9, v15

    move-object/from16 v35, v30

    move-object/from16 v37, v33

    :goto_11
    move/from16 v15, v34

    :goto_12
    add-int/lit8 v13, v10, 0x1

    move/from16 v34, v15

    move-object/from16 v30, v35

    move-object/from16 v33, v37

    move-object/from16 v14, v39

    move v15, v9

    goto/16 :goto_b

    :cond_14
    move-object/from16 v39, v14

    move v9, v15

    move-object/from16 v35, v30

    move-object/from16 v37, v33

    move/from16 v15, v34

    add-int/lit8 v8, v9, 0x1

    move v13, v7

    move v15, v8

    goto/16 :goto_a

    :cond_15
    move-object/from16 v39, v14

    move-object/from16 v35, v30

    move-object/from16 v37, v33

    move/from16 v15, v34

    if-nez v13, :cond_16

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v14, v39

    invoke-virtual {v7, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v10, -0x1

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v3

    move v11, v0

    move/from16 v12, v26

    move v13, v15

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

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

    add-int/2addr v3, v5

    add-int v26, v26, v3

    :cond_16
    add-int/lit8 v1, v1, 0x1

    move/from16 v34, v15

    move-object/from16 v31, v18

    move-object/from16 v32, v19

    move-object/from16 v30, v35

    move-object/from16 v33, v37

    const/4 v3, -0x1

    goto/16 :goto_6

    :cond_17
    move-object v3, v13

    move-object/from16 v35, v30

    move-object/from16 v37, v33

    move/from16 v1, v34

    const-string v2, "Resources"

    const/4 v8, -0x1

    if-eq v7, v8, :cond_19

    const/4 v8, 0x2

    if-ne v7, v8, :cond_18

    goto :goto_13

    :cond_18
    move-object/from16 v18, v2

    move-object v2, v14

    move-object/from16 v48, v35

    move-object/from16 v47, v37

    goto/16 :goto_22

    :cond_19
    const/4 v8, 0x2

    :goto_13
    new-instance v13, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v7, v8

    sub-int v12, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int v16, v7, v8

    move-object v7, v13

    move-object v8, v9

    move v9, v10

    move v10, v11

    move/from16 v11, v26

    move-object v15, v13

    move/from16 v13, v16

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v26, v26, v7

    sget v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceStartID:I

    move v15, v7

    const/4 v13, 0x0

    :goto_14
    sget v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceSize:I

    if-ge v15, v7, :cond_25

    move v7, v13

    const/4 v13, 0x0

    :goto_15
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v13, v8, :cond_24

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v8, :cond_23

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-nez v8, :cond_23

    move-object/from16 v12, v37

    invoke-virtual {v12, v15, v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v8

    if-eqz v8, :cond_22

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz v8, :cond_1a

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v9

    if-ne v8, v9, :cond_22

    :cond_1a
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz v8, :cond_1b

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v9

    if-ne v8, v9, :cond_22

    :cond_1b
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_16
    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v11

    if-ge v8, v11, :cond_1e

    invoke-virtual {v12, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v15, v13}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v11

    if-eqz v11, :cond_1c

    add-int/lit8 v10, v10, 0x1

    :cond_1c
    invoke-virtual {v12, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v11

    move/from16 v16, v10

    sget-object v10, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v10, v10, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ne v11, v10, :cond_1d

    add-int/lit8 v9, v9, 0x1

    :cond_1d
    add-int/lit8 v8, v8, 0x1

    move/from16 v10, v16

    goto :goto_16

    :cond_1e
    if-lez v9, :cond_22

    add-int/lit8 v18, v7, 0x1

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$8;

    const/16 v16, 0x1

    const/16 v19, 0x1

    const/16 v21, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v8, v35

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object v7, v11

    move-object v10, v8

    move-object/from16 v8, p0

    move/from16 v9, v16

    move-object/from16 v41, v10

    move v10, v15

    move-object/from16 v42, v11

    move v11, v13

    move-object/from16 v43, v12

    move v12, v0

    move/from16 v44, v13

    move/from16 v13, v26

    move-object/from16 v45, v14

    move v14, v1

    move/from16 v46, v15

    move/from16 v15, v19

    move/from16 v16, v21

    move-object/from16 v17, v22

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;ZIIIIIZZLjava/lang/String;)V

    move-object/from16 v7, v42

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v7, v26, v7

    sget-boolean v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->SHOW_BONUSES:Z

    if-eqz v8, :cond_20

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v8, v0

    move/from16 v10, v44

    move/from16 v9, v46

    invoke-static {v9, v10, v8, v4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getBuildingBonuses(IIII)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_21

    const/4 v13, 0x0

    :goto_17
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v13, v11, :cond_1f

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v11

    add-int/2addr v11, v5

    add-int/2addr v7, v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_17

    :cond_1f
    sub-int v8, v7, v26

    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sub-int v12, v7, v8

    invoke-direct {v11, v0, v12, v1, v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    goto :goto_18

    :cond_20
    move/from16 v10, v44

    move/from16 v9, v46

    :cond_21
    :goto_18
    move/from16 v26, v7

    move/from16 v7, v18

    goto :goto_19

    :cond_22
    move-object/from16 v43, v12

    move v10, v13

    move-object/from16 v45, v14

    move v9, v15

    move-object/from16 v41, v35

    goto :goto_19

    :cond_23
    move v10, v13

    move-object/from16 v45, v14

    move v9, v15

    move-object/from16 v41, v35

    move-object/from16 v43, v37

    :goto_19
    add-int/lit8 v13, v10, 0x1

    move v15, v9

    move-object/from16 v35, v41

    move-object/from16 v37, v43

    move-object/from16 v14, v45

    goto/16 :goto_15

    :cond_24
    move-object/from16 v45, v14

    move v9, v15

    move-object/from16 v41, v35

    move-object/from16 v43, v37

    add-int/lit8 v15, v9, 0x1

    move v13, v7

    goto/16 :goto_14

    :cond_25
    move-object/from16 v45, v14

    move-object/from16 v41, v35

    move-object/from16 v43, v37

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->SHOW_BUILDINGS_NO_PROVINCES_SIDEBAR:Z

    if-eqz v7, :cond_32

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_30

    sget v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceStartID:I

    move v15, v7

    const/4 v7, 0x0

    :goto_1a
    sget v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceSize:I

    if-ge v15, v8, :cond_30

    const/4 v14, 0x0

    :goto_1b
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v14, v8, :cond_2f

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v8, :cond_2e

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-nez v8, :cond_2e

    move-object/from16 v12, v43

    invoke-virtual {v12, v15, v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v8

    if-eqz v8, :cond_2d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1c
    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v11

    if-ge v8, v11, :cond_28

    invoke-virtual {v12, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v15, v14}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v11

    if-eqz v11, :cond_26

    add-int/lit8 v10, v10, 0x1

    :cond_26
    invoke-virtual {v12, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v11

    move/from16 v16, v10

    sget-object v10, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v10, v10, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ne v11, v10, :cond_27

    add-int/lit8 v9, v9, 0x1

    :cond_27
    add-int/lit8 v8, v8, 0x1

    move/from16 v10, v16

    goto :goto_1c

    :cond_28
    if-nez v9, :cond_2d

    if-nez v7, :cond_29

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$9;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v43, v12

    const-string v12, "Provinces"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ": 0"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v35, -0x1

    sget v36, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v8, v11

    sub-int v38, v4, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v39, v8, v11

    move-object/from16 v32, v7

    move-object/from16 v33, p0

    move/from16 v37, v26

    invoke-direct/range {v32 .. v39}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v26, v26, v7

    const/16 v18, 0x1

    goto :goto_1d

    :cond_29
    move-object/from16 v43, v12

    move/from16 v18, v7

    :goto_1d
    add-int/lit8 v19, v13, 0x1

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$10;

    const/4 v11, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v12, v41

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object v7, v13

    move-object/from16 v8, p0

    move v9, v11

    move v10, v15

    move v11, v14

    move-object/from16 v48, v12

    move-object/from16 v47, v43

    move v12, v0

    move-object/from16 v49, v13

    move/from16 v13, v26

    move/from16 v50, v14

    move v14, v1

    move/from16 v51, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v21

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;ZIIIIIZZLjava/lang/String;)V

    move-object/from16 v7, v49

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v7, v26, v7

    sget-boolean v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->SHOW_BONUSES:Z

    if-eqz v8, :cond_2b

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v8, v0

    move/from16 v10, v50

    move/from16 v9, v51

    invoke-static {v9, v10, v8, v4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getBuildingBonuses(IIII)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2c

    const/4 v13, 0x0

    :goto_1e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v13, v11, :cond_2a

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v11

    add-int/2addr v11, v5

    add-int/2addr v7, v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_1e

    :cond_2a
    sub-int v8, v7, v26

    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sub-int v12, v7, v8

    invoke-direct {v11, v0, v12, v1, v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v26, v7, v8

    goto :goto_1f

    :cond_2b
    move/from16 v10, v50

    move/from16 v9, v51

    :cond_2c
    move/from16 v26, v7

    :goto_1f
    move/from16 v7, v18

    move/from16 v13, v19

    goto :goto_20

    :cond_2d
    move-object/from16 v47, v12

    move v10, v14

    move v9, v15

    move-object/from16 v48, v41

    goto :goto_20

    :cond_2e
    move v10, v14

    move v9, v15

    move-object/from16 v48, v41

    move-object/from16 v47, v43

    :goto_20
    add-int/lit8 v14, v10, 0x1

    move v15, v9

    move-object/from16 v43, v47

    move-object/from16 v41, v48

    goto/16 :goto_1b

    :cond_2f
    move v9, v15

    move-object/from16 v48, v41

    move-object/from16 v47, v43

    add-int/lit8 v15, v9, 0x1

    goto/16 :goto_1a

    :cond_30
    move-object/from16 v48, v41

    move-object/from16 v47, v43

    if-nez v13, :cond_31

    new-instance v15, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v14, v45

    invoke-virtual {v7, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v10, -0x1

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v15

    move v11, v0

    move/from16 v12, v26

    move v13, v1

    move-object/from16 v18, v2

    move-object v2, v14

    move/from16 v14, v16

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v26, v26, v7

    goto :goto_22

    :cond_31
    move-object/from16 v18, v2

    goto :goto_21

    :cond_32
    move-object/from16 v18, v2

    move-object/from16 v48, v41

    move-object/from16 v47, v43

    :goto_21
    move-object/from16 v2, v45

    :goto_22
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->SHOW_TO_BE_RESEARCHED_BUILDINGS_SIDEBAR:Z

    if-eqz v7, :cond_42

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_42

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$11;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v14, 0x0

    sget-object v14, Laoc/kingdoms/lukasz/map/plague/KMTV/fTNtCctcBZcqKK;->mguAZqbpI:Ljava/lang/String;

    invoke-virtual {v7, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    sub-int v13, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int v16, v7, v8

    move-object v7, v15

    move-object/from16 v8, p0

    move/from16 v12, v26

    move/from16 v19, v4

    move-object v4, v14

    move/from16 v14, v16

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v26, v26, v7

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    :goto_23
    if-ge v15, v14, :cond_39

    move v7, v13

    const/4 v13, 0x0

    :goto_24
    sget v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge v13, v8, :cond_38

    const/4 v12, 0x0

    :goto_25
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v12, v8, :cond_37

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    if-ne v8, v15, :cond_36

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-nez v8, :cond_36

    move-object/from16 v11, v47

    invoke-virtual {v11, v13, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v8

    if-nez v8, :cond_35

    add-int/lit8 v20, v7, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_26
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v10

    if-ge v7, v10, :cond_34

    invoke-virtual {v11, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v10

    if-eqz v10, :cond_33

    add-int/lit8 v8, v8, 0x1

    :cond_33
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_34
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$12;

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v21, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    move/from16 v22, v15

    move-object/from16 v15, v48

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object v7, v10

    move-object/from16 v8, p0

    move/from16 v9, v16

    move-object/from16 v52, v10

    move v10, v13

    move-object/from16 v53, v11

    move v11, v12

    move/from16 v24, v12

    move v12, v0

    move/from16 v25, v13

    move/from16 v13, v26

    move/from16 v30, v14

    move v14, v1

    move-object/from16 v54, v15

    move/from16 v15, v17

    move/from16 v16, v21

    move-object/from16 v17, v23

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;ZIIIIIZZLjava/lang/String;)V

    move-object/from16 v7, v52

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v26, v26, v7

    move/from16 v7, v20

    goto :goto_28

    :cond_35
    move-object/from16 v53, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v30, v14

    move/from16 v22, v15

    goto :goto_27

    :cond_36
    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v30, v14

    move/from16 v22, v15

    move-object/from16 v53, v47

    :goto_27
    move-object/from16 v54, v48

    :goto_28
    add-int/lit8 v12, v24, 0x1

    move/from16 v15, v22

    move/from16 v13, v25

    move/from16 v14, v30

    move-object/from16 v47, v53

    move-object/from16 v48, v54

    goto/16 :goto_25

    :cond_37
    move/from16 v25, v13

    move/from16 v30, v14

    move/from16 v22, v15

    move-object/from16 v53, v47

    move-object/from16 v54, v48

    add-int/lit8 v13, v25, 0x1

    goto/16 :goto_24

    :cond_38
    move/from16 v30, v14

    move/from16 v22, v15

    move-object/from16 v53, v47

    move-object/from16 v54, v48

    add-int/lit8 v15, v22, 0x1

    move v13, v7

    goto/16 :goto_23

    :cond_39
    move/from16 v30, v14

    move-object/from16 v53, v47

    move-object/from16 v54, v48

    if-nez v13, :cond_3a

    new-instance v15, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v10, -0x1

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v15

    move v11, v0

    move/from16 v12, v26

    move v13, v1

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v26, v26, v7

    :cond_3a
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$13;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v8, v18

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v7, 0x2

    mul-int/2addr v4, v7

    sub-int v13, v19, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x6

    add-int v14, v4, v7

    move-object v7, v15

    move-object/from16 v8, p0

    move/from16 v12, v26

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v4, v5

    add-int v26, v26, v4

    sget v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceStartID:I

    const/4 v13, 0x0

    :goto_29
    sget v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceSize:I

    if-ge v4, v7, :cond_41

    const/4 v15, 0x0

    :goto_2a
    sget-object v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v15, v7, :cond_40

    sget-object v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v7, v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v7, :cond_3f

    sget-object v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-nez v7, :cond_3f

    move-object/from16 v14, v53

    invoke-virtual {v14, v4, v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v7

    if-nez v7, :cond_3e

    add-int/lit8 v18, v13, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_2b
    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v9

    if-ge v13, v9, :cond_3d

    invoke-virtual {v14, v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v4, v15}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v9

    if-eqz v9, :cond_3b

    add-int/lit8 v7, v7, 0x1

    :cond_3b
    invoke-virtual {v14, v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v10, v10, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ne v9, v10, :cond_3c

    add-int/lit8 v8, v8, 0x1

    :cond_3c
    add-int/lit8 v13, v13, 0x1

    goto :goto_2b

    :cond_3d
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$14;

    const/4 v9, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v12, v54

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v7, v13

    move-object/from16 v8, p0

    move v10, v4

    move v11, v15

    move-object/from16 v21, v12

    move v12, v0

    move-object/from16 v55, v13

    move/from16 v13, v26

    move-object/from16 v22, v14

    move v14, v1

    move/from16 v23, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v20

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;ZIIIIIZZLjava/lang/String;)V

    move-object/from16 v7, v55

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v26, v26, v7

    move/from16 v13, v18

    goto :goto_2d

    :cond_3e
    move-object/from16 v22, v14

    move/from16 v23, v15

    goto :goto_2c

    :cond_3f
    move/from16 v23, v15

    move-object/from16 v22, v53

    :goto_2c
    move-object/from16 v21, v54

    :goto_2d
    add-int/lit8 v15, v23, 0x1

    move-object/from16 v54, v21

    move-object/from16 v53, v22

    goto/16 :goto_2a

    :cond_40
    move-object/from16 v22, v53

    move-object/from16 v21, v54

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_29

    :cond_41
    if-nez v13, :cond_43

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v10, -0x1

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v3

    move v11, v0

    move/from16 v12, v26

    move v13, v1

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    add-int v26, v26, v0

    goto :goto_2e

    :cond_42
    move/from16 v19, v4

    const/16 v30, 0x3

    :cond_43
    :goto_2e
    move/from16 v0, v26

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int v3, v28, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v4, v19

    const/4 v9, 0x0

    invoke-direct {v1, v9, v9, v4, v0}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v27

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->drawScrollPositionAlways:Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Buildings"

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getPosY()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getHeight()I

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
