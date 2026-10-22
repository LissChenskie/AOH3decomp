.class public Laoc/kingdoms/lukasz/menu_element/MessageButton;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "MessageButton.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x15e

.field public static messageMaskY:I


# instance fields
.field public expiresTurnID:I

.field private iCivID:I

.field public imageID:I

.field public imgH:I

.field public imgW:I

.field public key:Ljava/lang/String;

.field public lTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIJIIZ)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->lTime:J

    move v0, p2

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->iCivID:I

    move-object v0, p1

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->key:Ljava/lang/String;

    move/from16 v0, p3

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imageID:I

    move/from16 v1, p4

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->expiresTurnID:I

    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imgW:I

    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imgH:I

    move-wide/from16 v0, p5

    iput-wide v0, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->lTime:J

    const-string v1, ""

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->fontID:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->iTextPositionX:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getExtraWidth()I

    move-result v4

    add-int v6, v0, v4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->init(Ljava/lang/String;IIIIIIZZZZ)V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON_FLAG:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/MessageButton;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->getMessage(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->actionClick()V

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/MessageButton$1;

    const-string v1, "rebuildInGame_MessagesSavePos"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/menu_element/MessageButton$1;-><init>(Laoc/kingdoms/lukasz/menu_element/MessageButton;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :goto_0
    return-void
.end method

.method public actionElementPPM()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->getMessage(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->actionClick()V

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/MessageButton$2;

    const-string v1, "rebuildInGame_MessagesSavePos"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/menu_element/MessageButton$2;-><init>(Laoc/kingdoms/lukasz/menu_element/MessageButton;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :goto_0
    return-void
.end method

.method public buildElementHover()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->getMessage_Hover(Ljava/lang/String;)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 11

    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->lTime:J

    const-wide/16 v2, 0x15e

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long p4, v0, v2

    if-ltz p4, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getHeight()I

    move-result p4

    int-to-float p4, p4

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->lTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43af0000    # 350.0f

    div-float/2addr v0, v1

    mul-float/2addr p4, v0

    float-to-int p4, p4

    add-int/2addr p3, p4

    :cond_0
    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result p4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    add-int v6, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result p4

    add-int v7, p4, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getWidth()I

    move-result p4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v8, p4, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getHeight()I

    move-result v9

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {p4, v0, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result p4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    add-int v7, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result p4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p4, v0

    add-int v8, p4, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getWidth()I

    move-result p4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v9, p4, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getHeight()I

    move-result p4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v10, p4, v0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getIsHovered()Z

    move-result p4

    if-eqz p4, :cond_1

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result p4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    add-int v7, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result p4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p4, v0

    add-int v8, p4, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getWidth()I

    move-result p4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v9, p4, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getHeight()I

    move-result p4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v10, p4, v0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_1
    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imageID:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result p4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getExtraWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imgW:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    add-int v7, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imgH:I

    div-int/lit8 v0, v10, 0x2

    sub-int/2addr p4, v0

    add-int v8, p4, p3

    iget v9, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imgW:I

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p4, p1, v0, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->iCivID:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p4

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object p4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v0, 0x84c0

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->messageMask:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->messageMask:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/MessageButton;->messageMaskY:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->messageMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p4, p1, v0, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->messageOver:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p4, p1, v0, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getIsHovered()Z

    move-result p4

    if-eqz p4, :cond_2

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p4, v3, v3, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->messageOver:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, v0, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_2
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getExtraWidth()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->imgW:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setIsHovered(Z)V
    .locals 0

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setIsHovered(Z)V

    if-eqz p1, :cond_0

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/MessageButton;->iCivID:I

    sput p1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    :cond_0
    return-void
.end method
