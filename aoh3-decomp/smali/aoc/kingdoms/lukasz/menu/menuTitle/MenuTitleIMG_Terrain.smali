.class public Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;
.source "MenuTitleIMG_Terrain.java"


# instance fields
.field public flagHeight:I

.field public flagWidth:I

.field public iText2Height:I

.field public iText2Width:I

.field public sText2:Ljava/lang/String;

.field public terrainID:I

.field public terrainID2:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIII)V
    .locals 0

    invoke-direct {p0, p1, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    const/4 p1, 0x0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->iText2Width:I

    iput p6, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->terrainID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainImages:Ljava/util/List;

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    rem-int/2addr p7, p1

    iput p7, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->terrainID2:I

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->fontID:I

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->sText2:Ljava/lang/String;

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, p3, p2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p2, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->iText2Width:I

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->iText2Height:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->getHeight()I

    move-result p1

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->flagHeight:I

    int-to-float p1, p1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainImages:Ljava/util/List;

    invoke-interface {p2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget p3, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->terrainID2:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainImages:Ljava/util/List;

    invoke-interface {p2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget p3, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->terrainID2:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->flagWidth:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 6

    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->getHeight()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->drawGradient(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainImages:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->terrainID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->terrainID2:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->getHeight()I

    move-result v1

    sub-int v1, p3, v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v3, v1, v2

    iget v4, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->flagWidth:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->flagHeight:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->getHeight()I

    move-result v1

    sub-int v1, p3, v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v3, v1, v2

    iget v4, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->flagWidth:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->flagHeight:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v2, p2, v0

    add-int/lit8 v7, p3, 0x1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->iText2Height:I

    sub-int v0, v7, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int v3, v0, v3

    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->iText2Width:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->iText2Height:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->sText2:Ljava/lang/String;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v3, p2, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->iText2Height:I

    sub-int v0, v7, v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    sget-object v5, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorHovered:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget v1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->getText()Ljava/lang/String;

    move-result-object v2

    div-int/lit8 v0, p4, 0x2

    add-int v6, p2, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->getTextWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v3, v6, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->getHeight()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->getTextHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v0

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->getColorText(Laoc/kingdoms/lukasz/menu_element/Status;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->sDay:Ljava/lang/String;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iDayWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int v3, v6, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->getHeight()I

    move-result v0

    sub-int/2addr v7, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Terrain;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v4

    add-int v4, v7, v0

    sget-object v5, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorHovered:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
