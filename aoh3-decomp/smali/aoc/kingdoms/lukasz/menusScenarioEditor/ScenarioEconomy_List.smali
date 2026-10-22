.class public Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioEconomy_List.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;
    }
.end annotation


# static fields
.field public static listMode:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

.field public static modeID:I


# instance fields
.field public sDefault:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->ECONOMY:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->listMode:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->modeID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 30

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    new-instance v7, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$1;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Name"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    div-int/lit8 v13, v8, 0x2

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->modeID:I

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-nez v8, :cond_0

    move/from16 v17, v15

    goto :goto_0

    :cond_0
    move/from16 v17, v16

    :goto_0
    const/4 v12, 0x0

    move-object v8, v7

    move-object/from16 v9, p0

    move/from16 v18, v2

    move v2, v15

    move/from16 v15, v17

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$2;

    sget-object v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->listMode:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    sget-object v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->MANPOWER:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    if-ne v8, v9, :cond_1

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "MaximumManpower"

    goto :goto_1

    :cond_1
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v9, 0x0

    sget-object v9, Laoc/kingdoms/lukasz/menusInGame/Province/iOYW/ALZmnpZHj;->pDcaYX:Ljava/lang/String;

    :goto_1
    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v21, v8

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    add-int v22, v8, v9

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    div-int/lit8 v24, v8, 0x2

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->modeID:I

    if-ne v8, v2, :cond_2

    move/from16 v26, v2

    goto :goto_2

    :cond_2
    move/from16 v26, v16

    :goto_2
    const/16 v23, 0x0

    move-object/from16 v19, v7

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v26}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$2;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;Ljava/lang/String;IIIIZ)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    add-int/lit8 v7, v7, 0x0

    const/4 v8, -0x1

    sput v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioPopulation_List;->iCivID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Default"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v15, p0

    iput-object v8, v15, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->sDefault:Ljava/lang/String;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move/from16 v8, v16

    :goto_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v9

    if-ge v8, v9, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    move v12, v7

    :goto_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_e

    sget v7, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->modeID:I

    if-nez v7, :cond_8

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    move v8, v2

    move/from16 v9, v16

    :goto_5
    if-ge v8, v7, :cond_7

    move/from16 v10, v16

    :goto_6
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-ge v10, v11, :cond_6

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-le v11, v13, :cond_4

    move v9, v8

    goto :goto_7

    :cond_4
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ge v11, v13, :cond_5

    goto :goto_7

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    :cond_6
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    :cond_7
    move/from16 v17, v3

    goto/16 :goto_a

    :cond_8
    sget-object v7, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->listMode:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    sget-object v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->MANPOWER:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    if-ne v7, v8, :cond_a

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    move v8, v2

    move/from16 v9, v16

    :goto_8
    if-ge v8, v7, :cond_7

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-wide v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    move/from16 v17, v3

    iget-wide v2, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    cmpg-double v2, v10, v2

    if-gez v2, :cond_9

    move v9, v8

    :cond_9
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v17

    const/4 v2, 0x1

    goto :goto_8

    :cond_a
    move/from16 v17, v3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v9, v16

    const/4 v3, 0x1

    :goto_9
    if-ge v3, v2, :cond_c

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    move v9, v3

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_c
    :goto_a
    move v2, v9

    new-instance v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$3;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v11, v7, v8

    mul-int/lit8 v19, v0, 0x2

    sub-int v7, v5, v19

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v20, v7, v8

    const/16 v21, 0x1

    move-object v7, v3

    move-object/from16 v8, p0

    move/from16 v28, v12

    move v12, v0

    move/from16 v13, v28

    move-object/from16 v29, v14

    move/from16 v14, v20

    move/from16 v15, v21

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$3;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-object/from16 v7, v29

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    new-instance v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$4;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->listMode:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    sget-object v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->MANPOWER:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    if-ne v9, v10, :cond_d

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-wide v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    double-to-int v9, v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_d
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    const/16 v10, 0xa

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    :goto_b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, -0x1

    add-int v8, v0, v5

    sub-int v8, v8, v19

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v24, v8, v9

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/16 v27, 0x1

    move-object/from16 v19, v3

    move-object/from16 v20, p0

    move/from16 v25, v28

    invoke-direct/range {v19 .. v27}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$4;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v3, v4

    move/from16 v13, v28

    add-int v12, v13, v3

    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v15, p0

    move-object v14, v7

    move v2, v8

    move/from16 v3, v17

    goto/16 :goto_4

    :cond_e
    move/from16 v17, v3

    move v13, v12

    new-instance v2, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const-string v8, ""

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v2

    move v10, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v3, v1, v17

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v1

    mul-int/lit8 v1, v17, 0x2

    sub-int/2addr v0, v1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object v1, v2

    move/from16 v2, v18

    move v4, v5

    move v5, v7

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public final drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .locals 7

    add-int v2, p2, p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result p2

    sub-int p2, p3, p2

    add-int/2addr p2, p7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object p6

    invoke-virtual {p6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result p6

    add-int/2addr p6, p5

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p6, v0

    invoke-static {p1, v2, p2, p4, p6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->mainBox:I

    add-int v3, p3, p7

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, p5, p2

    const/4 v6, 0x1

    move-object v0, p1

    move v4, p4

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    return-void
.end method

.method public updateLanguage()V
    .locals 4

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->listMode:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->GOLD:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const-string v2, "Default"

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->listMode:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->LEGACY:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v2, Lcom/google/android/gms/security/IYT/MQYGMkZOAcS;->nDYqcCHWOKGstEj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
