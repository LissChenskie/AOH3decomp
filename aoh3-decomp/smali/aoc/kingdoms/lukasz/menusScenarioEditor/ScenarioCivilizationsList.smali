.class public Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioCivilizationsList.java"


# instance fields
.field private lCivsTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field private lLoadedFlags_TagsIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sCivsTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 28

    move-object/from16 v11, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const-string v0, ""

    iput-object v0, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->sCivsTag:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lLoadedFlags_TagsIDs:Ljava/util/List;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    add-int v14, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v15, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v16, v1, v2

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-ltz v1, :cond_3

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_3

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ne v1, v2, :cond_3

    sput-boolean v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizations;->listOfAllCivs:Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->sCivsTag:Ljava/lang/String;

    move/from16 v18, v17

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeologiesSize()I

    move-result v1

    if-ge v10, v1, :cond_1

    new-instance v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->sCivsTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v1, v10}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Name:Ljava/lang/String;

    const/4 v5, 0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v6, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v2, v13, 0x2

    sub-int v19, v1, v2

    const/16 v20, 0x1

    move-object v1, v8

    move-object/from16 v2, p0

    move v7, v13

    move-object/from16 v21, v8

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v19, v15

    move v15, v10

    move/from16 v10, v20

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    move-object/from16 v1, v21

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v17

    add-int v18, v18, v1

    iget-object v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->sCivsTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1, v15}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->sCivsTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCheckboxState(Z)V

    :cond_0
    add-int/lit8 v10, v15, 0x1

    move/from16 v15, v19

    goto/16 :goto_0

    :cond_1
    move/from16 v19, v15

    move/from16 v21, v14

    :cond_2
    :goto_1
    move/from16 v0, v18

    goto/16 :goto_e

    :cond_3
    move/from16 v19, v15

    sput-boolean v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizations;->listOfAllCivs:Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v1, :cond_4

    new-instance v15, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList$2;

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v2, v13, 0x2

    sub-int v8, v1, v2

    const/16 v18, 0x1

    move-object v1, v15

    move-object/from16 v2, p0

    move v6, v13

    move/from16 v7, v17

    move/from16 v20, v9

    move/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList$2;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move/from16 v20, v9

    new-instance v15, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList$3;

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v2, v13, 0x2

    sub-int v8, v1, v2

    const/4 v9, 0x1

    move-object v1, v15

    move-object/from16 v2, p0

    move v6, v13

    move/from16 v7, v17

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList$3;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v17

    add-int v1, v17, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "game/Civilizations.txt"

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v4, v10

    :goto_3
    array-length v5, v3

    if-ge v4, v5, :cond_5

    aget-object v5, v3, v4

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v10

    :goto_4
    sget v4, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    const-string v5, ".json"

    if-ge v3, v4, :cond_8

    sget-boolean v4, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    const/4 v6, 0x0

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/DrawOver/SQ/XjthpFh;->ptdX:Ljava/lang/String;

    if-eqz v4, :cond_6

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    goto :goto_5

    :cond_6
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    :goto_5
    array-length v6, v4

    move v7, v10

    :goto_6
    if-ge v7, v6, :cond_7

    aget-object v8, v4, v7

    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    move v3, v10

    :goto_7
    sget v4, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v3, v4, :cond_a

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/game/civilizations/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    array-length v6, v4

    move v7, v10

    :goto_8
    if-ge v7, v6, :cond_9

    aget-object v8, v4, v7

    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v10

    :goto_9
    if-ge v4, v3, :cond_d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_b

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v10

    :goto_a
    if-ge v4, v3, :cond_d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_d
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    const-string v9, "]"

    const-string v8, " ["

    if-ltz v2, :cond_f

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->loadSuggestedCivs(I)Ljava/util/List;

    move-result-object v7

    move/from16 v18, v1

    move v6, v10

    :goto_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_e

    new-instance v5, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList$4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v21, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v22, v13, 0x2

    sub-int v1, v1, v22

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v23, v1, v2

    const/16 v24, 0x1

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v10, v5

    move/from16 v5, v21

    move/from16 v25, v6

    move v6, v13

    move-object/from16 v26, v7

    move/from16 v7, v18

    move-object/from16 v27, v8

    move/from16 v8, v23

    move/from16 v21, v14

    move-object v14, v9

    move/from16 v9, v24

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList$4;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList$5;

    const-string v3, ""

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    add-int/2addr v1, v13

    sub-int v1, v1, v22

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v6, v1, v2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v9, 0x1

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList$5;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v17

    add-int v18, v18, v1

    iget-object v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    move/from16 v10, v25

    move-object/from16 v2, v26

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v10, 0x1

    move-object v7, v2

    move-object v9, v14

    move/from16 v14, v21

    move-object/from16 v8, v27

    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_e
    move-object/from16 v27, v8

    move/from16 v21, v14

    move-object v14, v9

    goto :goto_c

    :cond_f
    move-object/from16 v27, v8

    move/from16 v21, v14

    move-object v14, v9

    move/from16 v18, v1

    :goto_c
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    move/from16 v9, v20

    const/4 v10, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_11

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v10, v9

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_11
    new-instance v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList$6;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v8, v27

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v5, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v22, v13, 0x2

    sub-int v1, v1, v22

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v23, v1, v2

    const/16 v24, 0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move v6, v13

    move/from16 v7, v18

    move-object/from16 v25, v8

    move/from16 v8, v23

    move-object/from16 v23, v14

    move-object v14, v9

    move/from16 v9, v24

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList$6;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList$7;

    const-string v3, ""

    const/4 v4, 0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    add-int/2addr v1, v13

    sub-int v1, v1, v22

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v6, v1, v2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v9, 0x1

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v7, v18

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList$7;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v17

    add-int v18, v18, v1

    iget-object v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v15, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v14, v23

    move-object/from16 v27, v25

    goto/16 :goto_c

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :goto_e
    new-instance v2, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const-string v4, ""

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v2

    move/from16 v6, v21

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v4, v21, v16

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v16

    sub-int v1, v1, v21

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x7

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v3, v19

    move-object v7, v12

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method

.method private final getFlagID(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private final getIsLoaded(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private final loadFlag(I)V
    .locals 8

    const-string v0, "gfx/flags/ran.png"

    const-string v1, ".png"

    const-string v2, "GameCivs/gfx/flagsH/"

    const-string v3, "gfx/flagsXH/"

    const-string v4, "gfx/flags/"

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v6, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v0}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public actionElement(I)V
    .locals 10

    const-string v0, "https://en.wikipedia.org/wiki/"

    sget-boolean v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizations;->listOfAllCivs:Z

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SEARCH_SCENARIO_CIVS:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v2, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildScenarioCivilizationsList()V

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->actionElement(I)V

    goto/16 :goto_0

    :cond_0
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Game;->addCivilization(Ljava/lang/String;IZZZZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceBorder(I)V

    sput-boolean v2, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView:Z

    sput-boolean v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->buildCivilizationsRegion(I)V

    :cond_1
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildScenarioCivilizationsList()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Wiki:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Laoc/kingdoms/lukasz/menus/Dialog;->GO_TO_LINK:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GO_TO_LINK:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-static {p1}, Laoc/kingdoms/lukasz/menus/Dialog;->setDialogType(Laoc/kingdoms/lukasz/menus/Dialog$DialogType;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "NoData"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_4

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_4

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->sCivsTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->updateCivilizationIdeology(ILjava/lang/String;)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildScenarioCivilizationsList()V

    :cond_4
    :goto_0
    return-void
.end method

.method public disposeData()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizations;->listOfAllCivs:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getFlagID(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getPosX()I

    move-result v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuPosY()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v5, v1, p3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flag_rect:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getPosX()I

    move-result v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuPosY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getFlagID(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getPosX()I

    move-result v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuPosY()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v5, v1, p3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flag_rect:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getPosX()I

    move-result v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuPosY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :catch_0
    :cond_3
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public final drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .locals 7

    add-int v2, p2, p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result p2

    sub-int p2, p3, p2

    add-int/2addr p2, p7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

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

.method public setVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->disposeData()V

    :cond_0
    return-void
.end method

.method public updateLanguage()V
    .locals 6

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    sget-boolean v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizations;->listOfAllCivs:Z

    const-string v1, "]"

    const-string v2, " ["

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "AddCivilization"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Government"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->sCivsTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateMenuElements_IsInView()V
    .locals 5

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuElements_IsInView()V

    sget-boolean v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizations;->listOfAllCivs:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElementsSize()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getIsLoaded(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v4

    if-eqz v4, :cond_0

    if-gez v2, :cond_1

    invoke-direct {p0, v3}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->loadFlag(I)V

    goto :goto_1

    :cond_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElementsSize()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lCivsTags:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getIsLoaded(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v3

    if-eqz v3, :cond_3

    if-gez v2, :cond_4

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->loadFlag(I)V

    goto :goto_3

    :cond_3
    if-ltz v2, :cond_4

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCivilizationsList;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
