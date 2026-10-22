.class public Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Scenarios.java"


# static fields
.field public static SCENARIOS_DEFAULT_MODE:Z = true

.field public static activeDescID:I

.field public static currentActiveDescID:I


# instance fields
.field private iHeight:I

.field private iWidth:I

.field private iXPos:I

.field private iYPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->iXPos:I

    iput v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->iYPos:I

    const/16 v0, 0x1e0

    iput v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->iHeight:I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->iXPos:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    iget v2, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->iWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v3, v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->iWidth:I

    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->iHeight:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->iHeight:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->mainTitle:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->iYPos:I

    new-instance v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$1;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int v6, v0, v1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$1;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;Ljava/lang/String;IIIIZ)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$2;

    const-string v2, ""

    const/4 v5, 0x0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int v6, v0, v1

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$2;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;Ljava/lang/String;IIIIZ)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "1440Desc1"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "1440Desc2"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "1440Desc3"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/16 v4, 0x96

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v5, v0, v1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$3;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;Ljava/lang/String;III)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$4;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Scenarios"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->outliner:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sub-int v6, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v7, v0, 0x4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->time:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$4;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$5;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Campaign"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->outliner:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sub-int v6, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v7, v0, 0x4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->time:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$5;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$6;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$6;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;IIZ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v7, 0x1

    move-object v0, p0

    move-object v6, v10

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->updateDesc()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->updateDesc()V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e088889

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3d50d0d1

    const v4, 0x3db0b0b1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v2, p2, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int v3, p3, v1

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v5, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->getPosY()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int v3, v1, p3

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v5, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    sub-int/2addr v1, v2

    add-int v3, v1, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager;->sparksAnimationHover:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public onHovered()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_Scenarios()V

    return-void
.end method

.method public updateDesc()V
    .locals 7

    sget-boolean v0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->SCENARIOS_DEFAULT_MODE:Z

    const/4 v1, 0x2

    const-string v2, ""

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->currentActiveDescID:I

    sget v3, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->activeDescID:I

    if-eq v0, v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "map/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "scenarios/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->activeDescID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/Desc.txt"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->activeDescID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    const-string v5, " "

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v4

    :cond_3
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->activeDescID:I

    sput v0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->currentActiveDescID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setText(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
