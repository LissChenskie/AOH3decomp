.class public Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioAssign_InGame.java"


# direct methods
.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$2;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "AssignProvinces"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$2;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame;Ljava/lang/String;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$3;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$3;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$4;

    const-string v2, ""

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$4;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$5;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, p0, v1, v2, v3}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$5;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame;IIZ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v7, 0x1

    move-object v0, p0

    move-object v6, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method

.method public static actionUpdateData()V
    .locals 5

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    if-eq v0, v1, :cond_3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->actionBrush:Z

    if-nez v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CREATE_SCENARIO_ASSIGN_CIVILIZATION:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-static {v0}, Laoc/kingdoms/lukasz/menus/Dialog;->setDialogType(Laoc/kingdoms/lukasz/menus/Dialog$DialogType;)V

    goto/16 :goto_1

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CREATE_SCENARIO_ASSIGN_CIVILIZATION:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-static {v0}, Laoc/kingdoms/lukasz/menus/Dialog;->setDialogType(Laoc/kingdoms/lukasz/menus/Dialog$DialogType;)V

    goto :goto_1

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/stats/LQy/lJxd;->htMd:Ljava/lang/String;

    if-lez v0, :cond_2

    :try_start_1
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    new-instance v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$6;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$6;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto :goto_0

    :cond_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    :goto_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceBorder(I)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    if-lez v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    new-instance v2, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$7;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    invoke-direct {v2, v1, v3}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$7;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBIG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v6, v0, v2

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method
