.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMap_GenerateSuggestedCivilizations.java"


# instance fields
.field public scenarioIDBefore:I


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;->scenarioIDBefore:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "GenerateSuggestedCivilizations"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;II)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    iput v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;->scenarioIDBefore:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;)V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;->loadData()V

    return-void
.end method

.method private final loadData()V
    .locals 2

    :goto_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->SCENARIOS_SIZE:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;->build_SuggestedOwners()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;->scenarioIDBefore:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    return-void
.end method


# virtual methods
.method public build_SuggestedOwners()V
    .locals 14

    const-string v0, ".txt"

    const-string v1, "suggestedCivilizations/"

    const-string v2, "/Data.json"

    const-string v3, "map/"

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "scenarios/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    new-instance v4, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v5, Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    const-class v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v6, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CPID:I

    if-ltz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CPID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    const-string v8, ";"

    if-eqz v6, :cond_3

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CPID:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    move v10, v7

    move v11, v9

    :goto_1
    array-length v12, v6

    if-ge v10, v12, :cond_2

    aget-object v12, v6, v10

    iget-object v13, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CivTAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v11, v7

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    if-eqz v11, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CPID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CivTAG:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v9}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CPID:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CivTAG:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v7}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method
