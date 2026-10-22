.class public Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioCreateAllianceList.java"


# static fields
.field public static editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance; = null

.field public static sMessageFirstTier:Ljava/lang/String; = ""

.field public static sMessageFlag:Ljava/lang/String; = ""

.field public static sMessageLeader:Ljava/lang/String; = ""

.field public static sMessageName:Ljava/lang/String; = ""

.field public static sMessageRest:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 25

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

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->Name_Alliance:Ljava/lang/String;

    sput-object v5, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->sMessageName:Ljava/lang/String;

    sget-object v5, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->Name_Leader:Ljava/lang/String;

    sput-object v5, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->sMessageLeader:Ljava/lang/String;

    sget-object v5, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->Name_FirstTier:Ljava/lang/String;

    sput-object v5, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->sMessageFirstTier:Ljava/lang/String;

    sget-object v5, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->Name_Rest:Ljava/lang/String;

    sput-object v5, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->sMessageRest:Ljava/lang/String;

    sget-object v5, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->FlagTag:Ljava/lang/String;

    sput-object v5, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->sMessageFlag:Ljava/lang/String;

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "AllianceName"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v12, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v13, v7, v11

    const/4 v11, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    const/16 v17, 0x0

    add-int/lit8 v5, v5, 0x0

    new-instance v15, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v14, 0x0

    sget-object v14, Landroidx/lifecycle/livedata/core/jzw/jkEBdieJhbh;->gvdSgmE:Ljava/lang/String;

    invoke-virtual {v8, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, ": "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v7, 0x2

    mul-int/lit8 v7, v0, 0x2

    sub-int v18, v4, v7

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v15

    move-object/from16 v8, p0

    move v12, v0

    move/from16 v19, v2

    move-object v2, v13

    move v13, v5

    move/from16 v20, v3

    move-object v3, v14

    move/from16 v14, v18

    move/from16 v21, v1

    move-object v1, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    new-instance v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$2;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Flag"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Tag"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v7, 0x2

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v1

    move-object/from16 v8, p0

    move v13, v5

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$2;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    new-instance v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$3;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Type of the Alliance: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->getTypeOfAlliance_Name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v7, v18, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v12, v7, v8

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v7, v1

    move-object/from16 v8, p0

    move v10, v0

    move v11, v5

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$3;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;Ljava/lang/String;IIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$4;

    const-string v9, ">>"

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v7, v18, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v0

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v10, v7, v8

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v7, v1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$4;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;Ljava/lang/String;IIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v8, 0x0

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/model/data/xlbt/LBhZogys;->DHVjuo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v12, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v13, v7, v11

    move-object v7, v1

    move v11, v5

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    new-instance v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$5;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v7, 0x2

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v1

    move-object/from16 v8, p0

    move v12, v0

    move v13, v5

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$5;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    new-instance v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$6;

    sget-object v7, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v7, v7, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    if-nez v7, :cond_0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "SelectCivilization"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    sget-object v7, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v7, v7, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    :goto_0
    move-object v9, v7

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v7, 0x2

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget-object v7, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v14, v7, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    move-object v7, v1

    move-object/from16 v8, p0

    move v12, v0

    move v13, v5

    move/from16 v16, v14

    move/from16 v14, v18

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$6;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Electors"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v12, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v13, v7, v11

    move-object v7, v1

    move v11, v5

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    new-instance v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$7;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v7, 0x2

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v1

    move-object/from16 v8, p0

    move v12, v0

    move v13, v5

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$7;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    new-instance v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$8;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "AddCivilization"

    invoke-virtual {v7, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v7, v1

    move v10, v0

    move v11, v5

    move/from16 v12, v18

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$8;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;Ljava/lang/String;IIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    move/from16 v1, v17

    :goto_1
    sget-object v7, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$9;

    sget-object v7, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v7, 0x2

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget-object v7, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object v7, v14

    move-object/from16 v8, p0

    move v12, v0

    move v13, v5

    move/from16 v23, v0

    move-object v0, v14

    move/from16 v14, v18

    move-object/from16 v24, v15

    move/from16 v15, v16

    move/from16 v16, v22

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$9;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v7

    add-int/2addr v5, v0

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v23

    move-object/from16 v15, v24

    goto :goto_1

    :cond_1
    move/from16 v23, v0

    move-object/from16 v24, v15

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Princes"

    invoke-virtual {v1, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v12, v4, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x6

    add-int v13, v1, v7

    move-object v7, v0

    move v11, v5

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$10;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v1, 0x2

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v0

    move-object/from16 v8, p0

    move/from16 v12, v23

    move v13, v5

    move/from16 v14, v18

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$10;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$11;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v7, v0

    move/from16 v10, v23

    move v11, v5

    move/from16 v12, v18

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$11;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;Ljava/lang/String;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    move/from16 v0, v17

    :goto_2
    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$12;

    sget-object v2, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v2, 0x2

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget-object v2, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v7, v1

    move-object/from16 v8, p0

    move/from16 v12, v23

    move v13, v5

    move/from16 v14, v18

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$12;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const-string v8, ""

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v1

    move/from16 v10, v21

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v3, v21, v20

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v21

    mul-int/lit8 v2, v20, 0x2

    sub-int/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v19

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public final drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .locals 7

    add-int v2, p2, p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result p2

    sub-int p2, p3, p2

    add-int/2addr p2, p7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

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
    .locals 3

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "CreateAlliance"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
