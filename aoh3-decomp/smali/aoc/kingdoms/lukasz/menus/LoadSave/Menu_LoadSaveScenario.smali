.class public Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Menu_LoadSaveScenario.java"


# static fields
.field public static goToMenu:Laoc/kingdoms/lukasz/menu/View;


# instance fields
.field public iNumOfSteps:I

.field public iStepID:I

.field public loadingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->NEW_GAME:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/16 v0, 0x1a

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iNumOfSteps:I

    const-string v0, ""

    iput-object v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->loadingName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    const-string v0, "Saving Scenario #1"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->loadAction()V

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

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iNumOfSteps:I

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

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iNumOfSteps:I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->getPosY()I

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

    iget p4, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    int-to-float p4, p4

    const p5, 0x3f6147ae    # 0.88f

    mul-float/2addr p4, p5

    iget p5, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iNumOfSteps:I

    int-to-float p5, p5

    div-float/2addr p4, p5

    const p5, 0x3df5c28f    # 0.12f

    add-float/2addr p4, p5

    invoke-static {p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawLoading(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->loadingName:Ljava/lang/String;

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

    const/4 v0, 0x1

    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    if-nez v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_1()V

    const-string v1, "Saving Scenario #2"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_2()V

    const-string v1, "Saving Scenario #3"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_3()V

    const-string v1, "Saving Scenario #4"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_4()V

    const-string v1, "Saving Scenario #5"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_5()V

    const-string v1, "Saving Scenario #6"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_6()V

    const-string v1, "Saving Scenario #7"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_7()V

    const-string v1, "Saving Scenario #8"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_8()V

    const/4 v1, 0x0

    sget-object v1, Lcom/badlogic/gdx/utils/compression/spWT/QefTqRjwAJmEDy;->LYTO:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_9()V

    const/4 v1, 0x0

    sget-object v1, Lcom/badlogic/gdx/net/otUh/aBEBOpwLZcQFCZ;->ZpLVFAsxiO:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_10()V

    const-string v1, "Saving Scenario #11"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_11()V

    const-string v1, "Saving Scenario #12"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0xb

    if-ne v1, v2, :cond_b

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_12()V

    const-string v1, "Saving Scenario #13"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_13()V

    const-string v1, "Saving Scenario #14"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0xd

    if-ne v1, v2, :cond_d

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_14()V

    const-string v1, "Saving Scenario #15"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0xe

    if-ne v1, v2, :cond_e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_15()V

    const-string v1, "Saving Scenario #16"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0xf

    if-ne v1, v2, :cond_f

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_16()V

    const-string v1, "Saving Scenario #17"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x10

    if-ne v1, v2, :cond_10

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_17()V

    const-string v1, "Saving Scenario #18"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x11

    if-ne v1, v2, :cond_11

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_18()V

    const-string v1, "Saving Scenario #19"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x12

    if-ne v1, v2, :cond_12

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_19()V

    const-string v1, "Saving Scenario #20"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0x13

    if-ne v1, v2, :cond_13

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_20()V

    const-string v1, "Saving Scenario #21"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x14

    if-ne v1, v2, :cond_14

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_21()V

    const-string v1, "Saving Scenario #22"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_0

    :cond_14
    const/16 v2, 0x15

    if-ne v1, v2, :cond_15

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_22()V

    const-string v1, "Saving Scenario #23"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_0

    :cond_15
    const/16 v2, 0x16

    if-ne v1, v2, :cond_16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_23()V

    const-string v1, "Saving Scenario #24"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_0

    :cond_16
    const/16 v2, 0x17

    if-ne v1, v2, :cond_17

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_24()V

    const-string v1, "Saving Scenario #25"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_0

    :cond_17
    const/16 v2, 0x18

    if-ne v1, v2, :cond_18

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_25()V

    const-string v1, "Saving Scenario #26"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_0

    :cond_18
    const/16 v2, 0x19

    if-ne v1, v2, :cond_19

    const-string v1, "Saving Scenario #27"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_0

    :cond_19
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Saving Scenario: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    add-int/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    return-void
.end method

.method public setLoadText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->loadingName:Ljava/lang/String;

    return-void
.end method
