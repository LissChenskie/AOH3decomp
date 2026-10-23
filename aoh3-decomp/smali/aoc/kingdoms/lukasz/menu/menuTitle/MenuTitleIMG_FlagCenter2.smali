.class public Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;
.source "MenuTitleIMG_FlagCenter2.java"


# instance fields
.field public flagHeight:I

.field public flagWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->getHeight()I

    move-result p1

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->flagHeight:I

    int-to-float p1, p1

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->flagWidth:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    :try_start_0
    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->getFlagCivID()I

    move-result p4

    invoke-static {p4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p4, p5}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object p4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v0, 0x84c0

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p4, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v4, p2, p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->getHeight()I

    move-result p4

    sub-int p4, p3, p4

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v5, p4, v3

    iget v6, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->flagWidth:I

    iget v7, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->flagHeight:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->titleFlagOver:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p4

    invoke-virtual {p4, p5}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object p4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 p5, 0x3f400000    # 0.75f

    invoke-direct {p4, v1, v1, v1, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v3, p3, p4

    iget v4, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->flagWidth:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->flagHeight:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 6

    iget v1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->getText()Ljava/lang/String;

    move-result-object v2

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->getTextWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int v3, p2, p4

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->getTextHeight()I

    move-result p2

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    add-int v4, p3, p2

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->getColorText(Laoc/kingdoms/lukasz/menu_element/Status;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getFlagCivID()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
