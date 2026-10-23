.class public Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Menu_LoadSavedGame.java"


# instance fields
.field public iNumOfSteps:I

.field public iStepID:I

.field public loadingName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/16 v0, 0xfa

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iNumOfSteps:I

    const-string v0, ""

    iput-object v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->loadingName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Loading"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " #1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->setLoadText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->loadAction()V

    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d40c0c1

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iNumOfSteps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int v5, p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int v6, p3, v0

    sget v7, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v8, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iNumOfSteps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    const v3, 0x3f733333    # 0.95f

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->getPosY()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v6, v0, p3

    sget v7, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v8, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x3

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    iget p4, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    int-to-float p4, p4

    const p5, 0x3f6147ae    # 0.88f

    mul-float/2addr p4, p5

    iget p5, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iNumOfSteps:I

    int-to-float p5, p5

    div-float/2addr p4, p5

    const p5, 0x3df5c28f    # 0.12f

    add-float/2addr p4, p5

    invoke-static {p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawLoading(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->loadingName:Ljava/lang/String;

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p4, p4, 0x4

    add-int v5, p2, p4

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p2, p2, 0x4

    add-int v6, p3, p2

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    const p2, 0x3e19999a    # 0.15f

    invoke-direct {v7, v1, v1, v1, p2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final loadAction()V
    .locals 5

    const-string v0, "Loading"

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->setLoadText(Ljava/lang/String;)V

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_7

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_6

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_5

    const/16 v3, 0x4e

    if-eq v2, v3, :cond_4

    const/16 v3, 0x50

    if-eq v2, v3, :cond_3

    const/16 v3, 0x51

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    sparse-switch v2, :sswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsGeneralsNotAssigned()V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsMilitary()V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsMilitaryBonuses()V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsInnovation()V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsInnovationBonuses()V

    goto/16 :goto_0

    :pswitch_5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsEconomy()V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsEconomyBonuses()V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsAdm()V

    goto/16 :goto_0

    :pswitch_8
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsAdmBonuses()V

    goto/16 :goto_0

    :pswitch_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsRulers_Bonuses()V

    goto/16 :goto_0

    :pswitch_a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsRulers()V

    goto/16 :goto_0

    :pswitch_b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceWonderConstruction()V

    goto/16 :goto_0

    :pswitch_c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceReligionConversion()V

    goto/16 :goto_0

    :pswitch_d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceCoreCreation()V

    goto/16 :goto_0

    :pswitch_e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceInvestInfrastructure()V

    goto/16 :goto_0

    :pswitch_f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceInvestGrowthRate()V

    goto/16 :goto_0

    :pswitch_10
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceInvestManpower()V

    goto/16 :goto_0

    :pswitch_11
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceInvestTax()V

    goto/16 :goto_0

    :pswitch_12
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceInvestDaysLeft()V

    goto/16 :goto_0

    :pswitch_13
    sput v3, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceConstructionBuilding()V

    goto/16 :goto_0

    :pswitch_14
    sget v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvincesBuildings(I)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :pswitch_15
    sput v3, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    goto/16 :goto_0

    :pswitch_16
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsLoans()V

    goto/16 :goto_0

    :pswitch_17
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsLegacies()V

    goto/16 :goto_0

    :pswitch_18
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsResearchProgress()V

    goto/16 :goto_0

    :pswitch_19
    new-instance v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame$1;

    const-string v3, "buildCivilizationsRegions"

    invoke-direct {v2, p0, v3}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame$1;-><init>(Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;Ljava/lang/String;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->buildProvincePopulationData()V

    goto/16 :goto_0

    :pswitch_1b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Population()V

    goto/16 :goto_0

    :sswitch_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    new-instance v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame$2;

    const-string v3, "LoadGame_RebuildMenus"

    invoke-direct {v2, p0, v3}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame$2;-><init>(Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;Ljava/lang/String;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_0

    :sswitch_1
    invoke-static {}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->initNewGame()V

    goto/16 :goto_0

    :sswitch_2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->loadStats(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :sswitch_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_AI_Budget()V

    goto/16 :goto_0

    :sswitch_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Colonization/AI_Colonization;->initData()V

    goto/16 :goto_0

    :sswitch_5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadBuild_ProvincesOccupied()V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadBuild_ProvincesUnderSiege()V

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadBuildColonization()V

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_AI_Diplomacy()V

    goto/16 :goto_0

    :sswitch_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_AI_CreateNewArmy()V

    goto/16 :goto_0

    :sswitch_a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_AI_Merge()V

    goto/16 :goto_0

    :sswitch_b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_RebelsMoveUnits()V

    goto/16 :goto_0

    :sswitch_c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Rebels()V

    goto/16 :goto_0

    :sswitch_d
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivData_Load2()V

    goto/16 :goto_0

    :sswitch_e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_59()V

    goto/16 :goto_0

    :sswitch_f
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_58()V

    goto/16 :goto_0

    :sswitch_10
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_57()V

    goto/16 :goto_0

    :sswitch_11
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_56()V

    goto/16 :goto_0

    :sswitch_12
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_InitCivsData_CoresReligionGenerals()V

    goto/16 :goto_0

    :sswitch_13
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->buildProvinceData()V

    goto/16 :goto_0

    :sswitch_14
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_UpdateDiplomacyPerMonth()V

    goto/16 :goto_0

    :sswitch_15
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildIncome()V

    goto/16 :goto_0

    :sswitch_16
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsStability()V

    goto/16 :goto_0

    :sswitch_17
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildArmyPosition()V

    goto/16 :goto_0

    :sswitch_18
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_48()V

    goto/16 :goto_0

    :sswitch_19
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateCities()V

    goto/16 :goto_0

    :sswitch_1a
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->buildCivilizationRanking()V

    goto/16 :goto_0

    :sswitch_1b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildManpower()V

    goto/16 :goto_0

    :sswitch_1c
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsGovernmentBuildings_LoadSavedGame()V

    goto/16 :goto_0

    :sswitch_1d
    invoke-static {}, Laoc/kingdoms/lukasz/map/ResourcesManager;->initUniqueCivsGoods()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildDistanceToCapital()V

    goto/16 :goto_0

    :sswitch_1e
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateWorldResourcesProduced(Z)V

    goto/16 :goto_0

    :sswitch_1f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsMoveUnits()V

    goto/16 :goto_0

    :sswitch_20
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_MapBattles_Update()V

    goto/16 :goto_0

    :sswitch_21
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_MapBattles()V

    goto/16 :goto_0

    :sswitch_22
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_64()V

    goto/16 :goto_0

    :sswitch_23
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_62(Z)V

    goto/16 :goto_0

    :sswitch_24
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_60()V

    goto/16 :goto_0

    :sswitch_25
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadPlayer_Stats3()V

    goto/16 :goto_0

    :sswitch_26
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadPlayer_Stats2()V

    goto/16 :goto_0

    :sswitch_27
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadPlayer_Stats()V

    goto/16 :goto_0

    :sswitch_28
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadPlayer_Data()V

    goto/16 :goto_0

    :sswitch_29
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_UpdatePlayersCivID()V

    goto/16 :goto_0

    :sswitch_2a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Vassals()Z

    goto/16 :goto_0

    :sswitch_2b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildVassals()V

    goto/16 :goto_0

    :sswitch_2c
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivData_Load()V

    goto/16 :goto_0

    :sswitch_2d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsNukesProduction()V

    goto/16 :goto_0

    :sswitch_2e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildAlliancesSpecial()V

    goto/16 :goto_0

    :sswitch_2f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->loadAlliancesSpecial_Images()V

    goto/16 :goto_0

    :sswitch_30
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_AllianceSpecial()V

    goto/16 :goto_0

    :sswitch_31
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveRelationsDamage()V

    goto/16 :goto_0

    :sswitch_32
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveRelationsImprove()V

    goto/16 :goto_0

    :sswitch_33
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveRivals()V

    goto/16 :goto_0

    :sswitch_34
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveGuarantee()V

    goto/16 :goto_0

    :sswitch_35
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveMilitaryAccess()V

    goto/16 :goto_0

    :sswitch_36
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveNonAggression()V

    goto/16 :goto_0

    :sswitch_37
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveTruce()V

    goto/16 :goto_0

    :sswitch_38
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveDefensive()V

    goto/16 :goto_0

    :sswitch_39
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveAlliances()V

    goto/16 :goto_0

    :sswitch_3a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveRelations2()V

    goto/16 :goto_0

    :sswitch_3b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveRelations()V

    goto/16 :goto_0

    :sswitch_3c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveWars_BuildData()V

    goto/16 :goto_0

    :sswitch_3d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveWars()V

    goto/16 :goto_0

    :sswitch_3e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsEventsData3()V

    goto/16 :goto_0

    :sswitch_3f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsEventsData2()V

    goto/16 :goto_0

    :sswitch_40
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsEventsData()V

    goto/16 :goto_0

    :sswitch_41
    sget v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvincesArmy_MoreFiles(I)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :sswitch_42
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildWastelandLevels()V

    goto/16 :goto_0

    :sswitch_43
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_7()V

    goto/16 :goto_0

    :sswitch_44
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildProvinceIsCapital()V

    goto/16 :goto_0

    :sswitch_45
    invoke-static {}, Laoc/kingdoms/lukasz/map/SiegeManager;->buildProvinceUnderSiege_Load()V

    goto/16 :goto_0

    :sswitch_46
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->buildProvinceCores()V

    goto/16 :goto_0

    :sswitch_47
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData10()V

    goto/16 :goto_0

    :sswitch_48
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData9()V

    goto/16 :goto_0

    :sswitch_49
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData8()V

    goto/16 :goto_0

    :sswitch_4a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData7()V

    goto/16 :goto_0

    :sswitch_4b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData6()V

    goto/16 :goto_0

    :sswitch_4c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData5()V

    goto/16 :goto_0

    :sswitch_4d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData4()V

    goto/16 :goto_0

    :sswitch_4e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData3()V

    goto/16 :goto_0

    :sswitch_4f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData2()V

    goto/16 :goto_0

    :sswitch_50
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData()V

    goto/16 :goto_0

    :pswitch_1c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->initProvinceData()V

    goto/16 :goto_0

    :pswitch_1d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_BuildTechTree()V

    goto/16 :goto_0

    :pswitch_1e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsUnlockedAdvantages()V

    goto/16 :goto_0

    :pswitch_1f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsLaws()V

    goto/16 :goto_0

    :pswitch_20
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsUnlockedTechnologies()V

    goto/16 :goto_0

    :pswitch_21
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_InitCivsData()V

    goto/16 :goto_0

    :pswitch_22
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Civs4()V

    goto/16 :goto_0

    :pswitch_23
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Civs3()V

    goto/16 :goto_0

    :pswitch_24
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Civs2()V

    goto :goto_0

    :pswitch_25
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_3_B()V

    goto :goto_0

    :pswitch_26
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_3_A()V

    goto :goto_0

    :pswitch_27
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Civs()V

    goto :goto_0

    :pswitch_28
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Details()V

    goto :goto_0

    :pswitch_29
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->clearData()V

    sput v3, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    goto :goto_0

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsEventsVariables2()V

    goto :goto_0

    :cond_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsEventsVariables()V

    goto :goto_0

    :cond_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvincesPlagues()V

    goto :goto_0

    :cond_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_MapPlagues()V

    goto :goto_0

    :cond_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsRecruitArmy()V

    goto :goto_0

    :cond_5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsRecruitArmyCreate()V

    goto :goto_0

    :cond_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsGoldenAges()V

    goto :goto_0

    :cond_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsTemporaryBonuses()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_8
    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_50
        0x12 -> :sswitch_4f
        0x13 -> :sswitch_4e
        0x14 -> :sswitch_4d
        0x15 -> :sswitch_4c
        0x16 -> :sswitch_4b
        0x17 -> :sswitch_4a
        0x18 -> :sswitch_49
        0x19 -> :sswitch_48
        0x1a -> :sswitch_47
        0x1b -> :sswitch_46
        0x1c -> :sswitch_45
        0x1d -> :sswitch_44
        0x1e -> :sswitch_43
        0x1f -> :sswitch_42
        0x4b -> :sswitch_41
        0x5f -> :sswitch_40
        0x60 -> :sswitch_3f
        0x61 -> :sswitch_3e
        0x69 -> :sswitch_3d
        0x6a -> :sswitch_3c
        0x6e -> :sswitch_3b
        0x6f -> :sswitch_3a
        0x73 -> :sswitch_39
        0x74 -> :sswitch_38
        0x75 -> :sswitch_37
        0x76 -> :sswitch_36
        0x77 -> :sswitch_35
        0x78 -> :sswitch_34
        0x79 -> :sswitch_33
        0x7a -> :sswitch_32
        0x7b -> :sswitch_31
        0x7c -> :sswitch_30
        0x7d -> :sswitch_2f
        0x7e -> :sswitch_2e
        0x7f -> :sswitch_2d
        0x81 -> :sswitch_2c
        0x82 -> :sswitch_2b
        0x87 -> :sswitch_2a
        0x8c -> :sswitch_29
        0x8d -> :sswitch_28
        0x8e -> :sswitch_27
        0x8f -> :sswitch_26
        0x90 -> :sswitch_25
        0x96 -> :sswitch_24
        0x9a -> :sswitch_23
        0x9e -> :sswitch_22
        0xaf -> :sswitch_21
        0xb0 -> :sswitch_20
        0xb4 -> :sswitch_1f
        0xb9 -> :sswitch_1e
        0xba -> :sswitch_1d
        0xbc -> :sswitch_1c
        0xbe -> :sswitch_1b
        0xbf -> :sswitch_1a
        0xc0 -> :sswitch_19
        0xc1 -> :sswitch_18
        0xc2 -> :sswitch_17
        0xc3 -> :sswitch_16
        0xc4 -> :sswitch_15
        0xc5 -> :sswitch_14
        0xc6 -> :sswitch_13
        0xc7 -> :sswitch_12
        0xc8 -> :sswitch_11
        0xc9 -> :sswitch_10
        0xcd -> :sswitch_f
        0xcf -> :sswitch_e
        0xd0 -> :sswitch_d
        0xd1 -> :sswitch_c
        0xd4 -> :sswitch_b
        0xd7 -> :sswitch_a
        0xda -> :sswitch_9
        0xdc -> :sswitch_8
        0xde -> :sswitch_7
        0xe0 -> :sswitch_6
        0xe2 -> :sswitch_5
        0xe4 -> :sswitch_4
        0xe7 -> :sswitch_3
        0xea -> :sswitch_2
        0xf9 -> :sswitch_1
        0xfa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2a
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3e
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x43
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLoadText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->loadingName:Ljava/lang/String;

    return-void
.end method
