.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonTopFlag.java"


# instance fields
.field private ANIMATION_TIME:I

.field private currentTime:J

.field private flagImgID:I

.field public inAnimation:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v0, 0x0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->inAnimation:Z

    const-wide/16 v0, 0x0

    iput-wide v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->currentTime:J

    const/16 v0, 0x2ee

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->ANIMATION_TIME:I

    const-string v1, ""

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->fontID:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->iTextPositionX:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->init(Ljava/lang/String;IIIIIIZZZZ)V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON_FLAG:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->updateLanguage()V

    return-void
.end method


# virtual methods
.method public actionElementPPM()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    :cond_0
    return-void
.end method

.method protected drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 1

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, v0, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->inAnimation:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->currentTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->currentTime:J

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, p3

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget-object v4, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->currentTime:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->ANIMATION_TIME:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v4, v4

    invoke-static {p1, p2, v0, v1, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->drawFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-wide p1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide p3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->currentTime:J

    sub-long/2addr p1, p3

    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->ANIMATION_TIME:I

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-lez p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->inAnimation:Z

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->currentTime:J

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->drawFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected drawFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 13

    move-object v0, p0

    move-object v7, p1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_BELOW:Z

    if-eqz v1, :cond_0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBelow:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_X:[I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagBelow:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isFlagNearest:Z

    const-string v8, "u_maskScaleY"

    const-string v9, "u_maskScale"

    const v10, 0x84c0

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v10}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_X:[I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_0

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderWater3(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v9, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v8, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v10}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_X:[I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->ENABLE_VASSAL_LORD_FLAG:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v2

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isFlagNearest:Z

    if-eqz v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v10}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->flagMaskLord:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_X:[I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMaskLord:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMaskLord:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderWater3(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v9, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v8, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->flagMaskLord:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v10}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_X:[I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMaskLord:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMaskLord:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_X:[I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p4, :cond_5

    :cond_4
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v1, v12, v12, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_X:[I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_5
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getFlagCivID()I
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    return v0
.end method

.method public setIsHovered(Z)V
    .locals 0

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setIsHovered(Z)V

    if-eqz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput p1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    :cond_0
    return-void
.end method

.method public updateLanguage()V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_GROUP:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_GROUP:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_GROUP:[I

    aget v4, v4, v1

    sub-int/2addr v2, v4

    if-lez v2, :cond_0

    sget v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag;->EXTRA_RANDOM:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v4

    add-int/2addr v2, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_GROUP:[I

    aget v4, v4, v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_GROUP:[I

    aget v1, v5, v1

    sub-int/2addr v4, v1

    rem-int v1, v2, v4

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->inAnimation:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->currentTime:J

    return-void
.end method
