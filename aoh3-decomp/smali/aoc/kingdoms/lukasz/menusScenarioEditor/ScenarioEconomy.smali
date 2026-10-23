.class public Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioEconomy.java"


# direct methods
.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->listMode:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->ECONOMY:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const/4 v2, 0x0

    sget-object v2, Laoc/kingdoms/lukasz/map/advisors/VjN/hQfu;->daXqvBWViNSW:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Economy"

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sProvinceDefault_Economy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->listMode:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->TAX_EFFICIENCY:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "TaxEfficiency"

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sProvinceDefault_TaxEfficiency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->listMode:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->MANPOWER:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Manpower"

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sProvinceDefault_Manpower:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->listMode:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->GOLD:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    if-ne v0, v1, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Gold"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->listMode:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->LEGACY:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    if-ne v0, v1, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Legacy"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->listMode:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->AI_AGGRESSIVENESS:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    if-ne v0, v1, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "AIAggressiveness"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;->listMode:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->NUKES:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    if-ne v0, v1, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "AtomicBombs"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, ""

    :goto_0
    new-instance v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy$2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Civilizations"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    invoke-direct {v1, p0, v0, v2, v3}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy$2;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy;Ljava/lang/String;II)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy$3;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Save"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy$3;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v7, 0x1

    move-object v0, p0

    move-object v6, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBIG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

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
