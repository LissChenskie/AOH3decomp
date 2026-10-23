.class public Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Menu_LoadSavingGame.java"


# static fields
.field public static SAVE_FILE_ID:I

.field public static goToMenu:Laoc/kingdoms/lukasz/menu/View;


# instance fields
.field public iNumOfSteps:I

.field public iStepID:I

.field public loadingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iNumOfSteps:I

    const-string v0, ""

    iput-object v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->loadingName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Saving"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " #1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->setLoadText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->loadAction()V

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

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iNumOfSteps:I

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

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iNumOfSteps:I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->getPosY()I

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

    iget p4, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    int-to-float p4, p4

    const p5, 0x3f6147ae    # 0.88f

    mul-float/2addr p4, p5

    iget p5, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iNumOfSteps:I

    int-to-float p5, p5

    div-float/2addr p4, p5

    const p5, 0x3df5c28f    # 0.12f

    add-float/2addr p4, p5

    invoke-static {p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawLoading(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->loadingName:Ljava/lang/String;

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
    .locals 4

    const-string v0, "Saving"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->setLoadText(Ljava/lang/String;)V

    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    goto/16 :goto_0

    :sswitch_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_Vassals()V

    goto/16 :goto_0

    :sswitch_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->saveStats()V

    goto/16 :goto_0

    :sswitch_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AI_Budget()V

    goto/16 :goto_0

    :sswitch_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AI_Diplomacy()V

    goto/16 :goto_0

    :sswitch_5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AI_CreateNewArmy()V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AI_Merge()V

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Rebels_Data()V

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Rebels_Data_MoveUnits()V

    goto/16 :goto_0

    :sswitch_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Map_Data_Battles()V

    goto/16 :goto_0

    :sswitch_a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Map_AlliancesSpecial()V

    goto/16 :goto_0

    :sswitch_b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Player_Stats3()V

    goto/16 :goto_0

    :sswitch_c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Player_Stats2()V

    goto/16 :goto_0

    :sswitch_d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Player_Stats()V

    goto/16 :goto_0

    :sswitch_e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Player_Data()V

    goto/16 :goto_0

    :sswitch_f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data4()V

    goto/16 :goto_0

    :sswitch_10
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data3()V

    goto/16 :goto_0

    :sswitch_11
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data2()V

    goto/16 :goto_0

    :sswitch_12
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data()V

    goto/16 :goto_0

    :sswitch_13
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_EventsData3()V

    goto/16 :goto_0

    :sswitch_14
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_EventsData2()V

    goto/16 :goto_0

    :sswitch_15
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_EventsData()V

    goto/16 :goto_0

    :sswitch_16
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_MoveUnits()V

    goto/16 :goto_0

    :sswitch_17
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_Legacies()V

    goto/16 :goto_0

    :sswitch_18
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_Loans()V

    goto/16 :goto_0

    :sswitch_19
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_GoldenAges()V

    goto/16 :goto_0

    :sswitch_1a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_EventsVariables2()V

    goto/16 :goto_0

    :sswitch_1b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_EventsVariables()V

    goto/16 :goto_0

    :sswitch_1c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_TemporaryBonuses()V

    goto/16 :goto_0

    :sswitch_1d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_GeneralsNotAssigned()V

    goto/16 :goto_0

    :sswitch_1e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsMilitaryBonuses()V

    goto/16 :goto_0

    :sswitch_1f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsMilitary()V

    goto/16 :goto_0

    :sswitch_20
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsInnovationBonuses()V

    goto/16 :goto_0

    :sswitch_21
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsInnovation()V

    goto/16 :goto_0

    :sswitch_22
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsEconomyBonuses()V

    goto/16 :goto_0

    :sswitch_23
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsEconomy()V

    goto/16 :goto_0

    :sswitch_24
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsAdmBonuses()V

    goto/16 :goto_0

    :sswitch_25
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsAdm()V

    goto/16 :goto_0

    :sswitch_26
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_RulersBonuses()V

    goto/16 :goto_0

    :sswitch_27
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_Rulers()V

    goto/16 :goto_0

    :sswitch_28
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_Plagues()V

    goto/16 :goto_0

    :sswitch_29
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data10()V

    goto/16 :goto_0

    :sswitch_2a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Map_Data_Plagues()V

    goto/16 :goto_0

    :sswitch_2b
    sget v1, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->SAVE_PROVINCES_ARMIES_PER_FILE:I

    mul-int/2addr v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget v1, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_Armies_MoreFiles(I)V

    return-void

    :sswitch_2c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civ_Data_RecruitArmyCreate()V

    goto/16 :goto_0

    :sswitch_2d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civ_Data_RecruitingArmy()V

    goto/16 :goto_0

    :sswitch_2e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civ_Data_Laws()V

    goto/16 :goto_0

    :sswitch_2f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civ_Data_UnlockedAdvantages()V

    goto/16 :goto_0

    :sswitch_30
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civ_Data_ResearchProgress()V

    goto/16 :goto_0

    :sswitch_31
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civ_Data_NukeProduction()V

    goto/16 :goto_0

    :sswitch_32
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civ_Data_UnlockedTechnologies()V

    goto/16 :goto_0

    :sswitch_33
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_WondersConstruction()V

    goto/16 :goto_0

    :sswitch_34
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_ReligionConversion()V

    goto/16 :goto_0

    :sswitch_35
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_CoreConstruction()V

    goto/16 :goto_0

    :sswitch_36
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_Infrastructure()V

    goto/16 :goto_0

    :sswitch_37
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_InvestGrowthRate()V

    goto/16 :goto_0

    :sswitch_38
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_InvestManpower()V

    goto/16 :goto_0

    :sswitch_39
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_InvestTax()V

    goto/16 :goto_0

    :sswitch_3a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_InvestDaysLeft()V

    goto/16 :goto_0

    :sswitch_3b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveWars()V

    goto/16 :goto_0

    :sswitch_3c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveRelations2()V

    goto/16 :goto_0

    :sswitch_3d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveRelations()V

    goto/16 :goto_0

    :sswitch_3e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveTruces()V

    goto/16 :goto_0

    :sswitch_3f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveNonAggression()V

    goto/16 :goto_0

    :sswitch_40
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveMilitaryAccess()V

    goto/16 :goto_0

    :sswitch_41
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveDefensive()V

    goto/16 :goto_0

    :sswitch_42
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveRelationsDamage()V

    goto/16 :goto_0

    :sswitch_43
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveRelationsImprove()V

    goto/16 :goto_0

    :sswitch_44
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveRivals()V

    goto/16 :goto_0

    :sswitch_45
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveAlliances()V

    goto/16 :goto_0

    :sswitch_46
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveGuarantee()V

    goto/16 :goto_0

    :sswitch_47
    sput v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    goto/16 :goto_0

    :sswitch_48
    sget v1, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->SAVE_PROVINCES_BUILDINGS_PER_FILE:I

    mul-int/2addr v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget v1, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_Buildings(I)V

    return-void

    :sswitch_49
    sput v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    goto :goto_0

    :sswitch_4a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_ConstructionBuilding()V

    goto :goto_0

    :sswitch_4b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_Population()V

    goto :goto_0

    :sswitch_4c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data9()V

    goto :goto_0

    :sswitch_4d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data8()V

    goto :goto_0

    :sswitch_4e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data7()V

    goto :goto_0

    :sswitch_4f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data6()V

    goto :goto_0

    :sswitch_50
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data5()V

    goto :goto_0

    :sswitch_51
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data4()V

    goto :goto_0

    :sswitch_52
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data3()V

    goto :goto_0

    :sswitch_53
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data2()V

    goto :goto_0

    :sswitch_54
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data()V

    goto :goto_0

    :sswitch_55
    sput v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_55
        0x2 -> :sswitch_54
        0x5 -> :sswitch_53
        0x9 -> :sswitch_52
        0xc -> :sswitch_51
        0x10 -> :sswitch_50
        0x14 -> :sswitch_4f
        0x18 -> :sswitch_4e
        0x1c -> :sswitch_4d
        0x20 -> :sswitch_4c
        0x23 -> :sswitch_4b
        0x28 -> :sswitch_4a
        0x2a -> :sswitch_49
        0x2b -> :sswitch_48
        0x2c -> :sswitch_47
        0x2e -> :sswitch_46
        0x30 -> :sswitch_45
        0x32 -> :sswitch_44
        0x35 -> :sswitch_43
        0x37 -> :sswitch_42
        0x39 -> :sswitch_41
        0x3b -> :sswitch_40
        0x3d -> :sswitch_3f
        0x3f -> :sswitch_3e
        0x41 -> :sswitch_3d
        0x45 -> :sswitch_3c
        0x49 -> :sswitch_3b
        0x4c -> :sswitch_3a
        0x4f -> :sswitch_39
        0x52 -> :sswitch_38
        0x55 -> :sswitch_37
        0x58 -> :sswitch_36
        0x5b -> :sswitch_35
        0x5d -> :sswitch_34
        0x5f -> :sswitch_33
        0x61 -> :sswitch_32
        0x65 -> :sswitch_31
        0x67 -> :sswitch_30
        0x6a -> :sswitch_2f
        0x6d -> :sswitch_2e
        0x6f -> :sswitch_2d
        0x70 -> :sswitch_2c
        0x73 -> :sswitch_2b
        0x79 -> :sswitch_2a
        0x7b -> :sswitch_29
        0x7d -> :sswitch_28
        0x7f -> :sswitch_27
        0x81 -> :sswitch_26
        0x84 -> :sswitch_25
        0x86 -> :sswitch_24
        0x88 -> :sswitch_23
        0x8a -> :sswitch_22
        0x8d -> :sswitch_21
        0x8f -> :sswitch_20
        0x91 -> :sswitch_1f
        0x93 -> :sswitch_1e
        0x95 -> :sswitch_1d
        0x98 -> :sswitch_1c
        0x9b -> :sswitch_1b
        0x9e -> :sswitch_1a
        0xa0 -> :sswitch_19
        0xa2 -> :sswitch_18
        0xa4 -> :sswitch_17
        0xa5 -> :sswitch_16
        0xa8 -> :sswitch_15
        0xaa -> :sswitch_14
        0xac -> :sswitch_13
        0xaf -> :sswitch_12
        0xb2 -> :sswitch_11
        0xb5 -> :sswitch_10
        0xb7 -> :sswitch_f
        0xba -> :sswitch_e
        0xbc -> :sswitch_d
        0xbf -> :sswitch_c
        0xc1 -> :sswitch_b
        0xc3 -> :sswitch_a
        0xc6 -> :sswitch_9
        0xca -> :sswitch_8
        0xcd -> :sswitch_7
        0xd0 -> :sswitch_6
        0xd3 -> :sswitch_5
        0xd5 -> :sswitch_4
        0xd7 -> :sswitch_3
        0xda -> :sswitch_2
        0xdd -> :sswitch_1
        0xdf -> :sswitch_0
    .end sparse-switch
.end method

.method public setLoadText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->loadingName:Ljava/lang/String;

    return-void
.end method
