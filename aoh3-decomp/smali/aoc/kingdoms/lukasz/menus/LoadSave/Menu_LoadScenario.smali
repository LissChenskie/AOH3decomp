.class public Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Menu_LoadScenario.java"


# static fields
.field public static editorMode:Z

.field public static goToMenu:Laoc/kingdoms/lukasz/menu/View;


# instance fields
.field public iNumOfSteps:I

.field public iStepID:I

.field public loadingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->NEW_GAME:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/16 v0, 0x3d

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iNumOfSteps:I

    const-string v0, ""

    iput-object v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->loadingName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    const/4 v0, 0x0

    sget-object v0, Landroidx/core/text/util/pRCP/IwYCCQBuFGwl;->ygszRFbrkbhP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->loadScenario()V

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

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iNumOfSteps:I

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

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iNumOfSteps:I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->getPosY()I

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

    iget p4, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    int-to-float p4, p4

    const p5, 0x3f6147ae    # 0.88f

    mul-float/2addr p4, p5

    iget p5, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iNumOfSteps:I

    int-to-float p5, p5

    div-float/2addr p4, p5

    const p5, 0x3df5c28f    # 0.12f

    add-float/2addr p4, p5

    invoke-static {p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawLoading(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->loadingName:Ljava/lang/String;

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

.method public final loadScenario()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    if-nez v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->clearData()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_1()V

    const/4 v1, 0x0

    sget-object v1, Landroidx/lifecycle/livedata/core/jzw/jkEBdieJhbh;->JCjDvoaBKwS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_2()V

    const-string v1, "Loading Scenario #3 Civilizations"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_3(Z)V

    const-string v1, "Loading Scenario #3A Civilizations Names"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_3_A()V

    const-string v1, "Loading Scenario #3B Flags"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_3_B()V

    const-string v1, "Loading Scenario #3C Civilization\'s Provinces"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_3_C()V

    const/4 v1, 0x0

    sget-object v1, Landroidx/core/text/util/pRCP/IwYCCQBuFGwl;->mCWvHFgPIPyX:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_4()V

    const-string v1, "Loading Scenario #5"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_5()V

    const-string v1, "Loading Scenario #6"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_6()V

    const-string v1, "Loading Scenario #7"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_7()V

    const-string v1, "Loading Scenario #8"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_8()V

    const-string v1, "Loading Scenario #9"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0xb

    if-ne v1, v2, :cond_b

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_9()V

    const-string v1, "Loading Scenario #10"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_10()V

    const-string v1, "Loading Scenario #11"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0xd

    if-ne v1, v2, :cond_d

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_11()V

    const-string v1, "Loading Scenario #12"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0xe

    if-ne v1, v2, :cond_e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_12()V

    const-string v1, "Loading Scenario #13"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0xf

    if-ne v1, v2, :cond_f

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_13()V

    const-string v1, "Loading Scenario #14"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x10

    if-ne v1, v2, :cond_10

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_14()V

    const-string v1, "Loading Scenario #15"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x11

    if-ne v1, v2, :cond_11

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_15()V

    const-string v1, "Loading Scenario #16"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x12

    if-ne v1, v2, :cond_12

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_16()V

    const-string v1, "Loading Scenario #17"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0x13

    if-ne v1, v2, :cond_13

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_17()V

    const-string v1, "Loading Scenario #18"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x14

    if-ne v1, v2, :cond_14

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_18()V

    const/4 v1, 0x0

    sget-object v1, Lcom/badlogic/gdx/net/otUh/aBEBOpwLZcQFCZ;->HKzeqclhwpLDfDq:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0x15

    if-ne v1, v2, :cond_15

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_19()V

    const-string v1, "Loading Scenario #20"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0x16

    if-ne v1, v2, :cond_16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_20()V

    const-string v1, "Loading Scenario #21"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0x17

    if-ne v1, v2, :cond_17

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_21()V

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/idYW/HjHDSSkYG;->oLIGGPj:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0x18

    if-ne v1, v2, :cond_18

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_22()V

    const-string v1, "Loading Scenario #23"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const/16 v2, 0x19

    if-ne v1, v2, :cond_19

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_23()V

    const-string v1, "Loading Scenario #24"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_24()V

    const-string v1, "Loading Scenario #25"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    const/16 v2, 0x1b

    if-ne v1, v2, :cond_1b

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_25(Z)V

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/map/plague/KMTV/fTNtCctcBZcqKK;->FLeljiHLJSgyzi:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    const/16 v2, 0x1c

    if-ne v1, v2, :cond_1c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_26()V

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/nvwi/cIUGJCqyPXfp;->fCJWfR:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    const/16 v2, 0x1d

    if-ne v1, v2, :cond_1d

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_27()V

    const-string v1, "Loading Scenario #28"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_28()V

    const-string v1, "Loading Scenario #29"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1f

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_29()V

    const-string v1, "Loading Scenario #30"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    const/16 v2, 0x20

    if-ne v1, v2, :cond_20

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_30()V

    const-string v1, "Loading Scenario #31"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    const/16 v2, 0x21

    if-ne v1, v2, :cond_21

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_31()V

    const-string v1, "Loading Scenario #32"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    const/16 v2, 0x22

    if-ne v1, v2, :cond_22

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_32()V

    const-string v1, "Loading Scenario #33"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    const/16 v2, 0x23

    if-ne v1, v2, :cond_23

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_33()V

    const-string v1, "Loading Scenario #34"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_23
    const/16 v2, 0x24

    if-ne v1, v2, :cond_24

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_34()V

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/gms/internal/tasks/Vhe/SwmJtrccN;->NHgFbzPDkyPFBAV:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    const/16 v2, 0x25

    if-ne v1, v2, :cond_25

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_35()V

    const-string v1, "Loading Scenario #36"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    const/16 v2, 0x26

    if-ne v1, v2, :cond_26

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_36(Z)V

    const-string v1, "Loading Scenario #37"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_26
    const/16 v2, 0x27

    if-ne v1, v2, :cond_27

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_37()V

    const-string v1, "Loading Scenario #38"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    const/16 v2, 0x28

    if-ne v1, v2, :cond_28

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_38(Z)V

    const-string v1, "Loading Scenario #39"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_28
    const/16 v2, 0x29

    if-ne v1, v2, :cond_29

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_39(Z)V

    const-string v1, "Loading Scenario #40"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_29
    const/16 v2, 0x2a

    if-ne v1, v2, :cond_2a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_40(Z)V

    const-string v1, "Loading Scenario #41"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2a
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2b

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_41(Z)V

    const-string v1, "Loading Scenario #42"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2b
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_42()V

    const-string v1, "Loading Scenario #43"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2c
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2d

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_43()V

    const-string v1, "Loading Scenario #44"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2d
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_44()V

    const-string v1, "Loading Scenario #45"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2e
    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2f

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_45()V

    const-string v1, "Loading Scenario #46"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2f
    const/16 v2, 0x30

    if-ne v1, v2, :cond_30

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_46()V

    const-string v1, "Loading Scenario #47"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_30
    const/16 v2, 0x31

    if-ne v1, v2, :cond_31

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_47()V

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/map/advisors/VjN/hQfu;->KKkWPBqhfQc:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_31
    const/16 v2, 0x32

    if-ne v1, v2, :cond_32

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_48()V

    const-string v1, "Loading Scenario #49"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_32
    const/16 v2, 0x33

    if-ne v1, v2, :cond_33

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_49(Z)V

    const-string v1, "Loading Scenario #50"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_33
    const/16 v2, 0x34

    if-ne v1, v2, :cond_34

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_50(Z)V

    const-string v1, "Loading Scenario #51"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_34
    const/16 v2, 0x35

    if-ne v1, v2, :cond_35

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_51(Z)V

    const-string v1, "Loading Scenario #52"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_35
    const/16 v2, 0x36

    if-ne v1, v2, :cond_36

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_52()V

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/RJR/ATsAGKCnv;->eGBti:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_36
    const/16 v2, 0x37

    if-ne v1, v2, :cond_37

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_53()V

    const-string v1, "Loading Scenario #54"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_37
    const/16 v2, 0x38

    if-ne v1, v2, :cond_38

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_54()V

    const-string v1, "Loading Scenario #55"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_38
    const/16 v2, 0x39

    if-ne v1, v2, :cond_39

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_55()V

    const-string v1, "Loading Scenario #56"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_39
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_3a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_56()V

    const-string v1, "Loading Scenario #57"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3a
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_3b

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_57()V

    const-string v1, "Loading Scenario #58"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3b
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_3c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_58()V

    const-string v1, "Loading Scenario #59"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3c
    const/16 v2, 0x3d

    if-ne v1, v2, :cond_3d

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_59()V

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/nvwi/cIUGJCqyPXfp;->rECKr:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3d
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_3e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_60()V

    const-string v1, "Loading Scenario #61"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3e
    const/16 v2, 0x3f

    if-ne v1, v2, :cond_3f

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_61()V

    const-string v1, "Loading Scenario #62"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3f
    const/16 v2, 0x40

    if-ne v1, v2, :cond_40

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_62(Z)V

    const-string v1, "Loading Scenario #63"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_0

    :cond_40
    const/16 v2, 0x41

    if-ne v1, v2, :cond_41

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_63()V

    const-string v1, "Loading Scenario #64"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_0

    :cond_41
    const/16 v2, 0x42

    if-ne v1, v2, :cond_42

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_64()V

    const-string v1, "Loading Scenario #65"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_0

    :cond_42
    const/16 v2, 0x43

    if-ne v1, v2, :cond_43

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v2, v1, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    invoke-static {}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->setRandomCiv()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iput-boolean v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadScenario: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_43
    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    add-int/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    return-void
.end method

.method public setLoadText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->loadingName:Ljava/lang/String;

    return-void
.end method
