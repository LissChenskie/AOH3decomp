.class public Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;
.source "MenuTitleIMG_FlagCenter_HRE.java"


# instance fields
.field public allianceID:I

.field public flagHeight:I

.field public flagWidth:I

.field public iText2Width:I

.field public sText2:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    invoke-direct {p0, p2, p4, p5, p6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    const/4 p2, 0x0

    iput p2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->iText2Width:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->allianceID:I

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->fontID:I

    iput-object p3, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->sText2:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->getHeight()I

    move-result p1

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->flagHeight:I

    int-to-float p1, p1

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->flagWidth:I

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->iText2Width:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    :try_start_0
    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial_Flag:Ljava/util/List;

    iget p5, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->allianceID:I

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Laoc/kingdoms/lukasz/textures/Image;

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->getHeight()I

    move-result p4

    sub-int p4, p3, p4

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v5, p4, v3

    iget v6, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->flagWidth:I

    iget v7, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->flagHeight:I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v3, p3, p4

    iget v4, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->flagWidth:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->flagHeight:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 15

    move-object v0, p0

    iget v2, v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->getText()Ljava/lang/String;

    move-result-object v3

    div-int/lit8 v1, p4, 0x2

    add-int v7, p2, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->getTextWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v4, v7, v1

    add-int/lit8 v8, p3, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->getHeight()I

    move-result v1

    sub-int v1, v8, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->getTextHeight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v1

    move-object/from16 v1, p5

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->getColorText(Laoc/kingdoms/lukasz/menu_element/Status;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v11, v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->sText2:Ljava/lang/String;

    iget v1, v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->iText2Width:I

    div-int/lit8 v1, v1, 0x2

    sub-int v12, v7, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->getHeight()I

    move-result v1

    sub-int/2addr v8, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter_HRE;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v13, v8, v1

    sget-object v14, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorHovered:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getFlagCivID()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
