.class public Laoc/kingdoms/lukasz/map/map/City;
.super Ljava/lang/Object;
.source "City.java"


# static fields
.field public static final PADDING:I = 0xa

.field public static final PADDING_NAME:I = 0x5


# instance fields
.field public iCityLevel:I

.field public iHeight:I

.field public iPosX:I

.field public iPosY:I

.field public iWidth:I

.field public imageID:I

.field public sCityName:Ljava/lang/String;

.field public sCityNameOriginal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityNameOriginal:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->updateCityNameWidth()V

    iput p2, p0, Laoc/kingdoms/lukasz/map/map/City;->iPosX:I

    iput p3, p0, Laoc/kingdoms/lukasz/map/map/City;->iPosY:I

    iput p4, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    return-void
.end method

.method private final drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/4 v2, 0x4

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object p5, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget p5, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p4

    invoke-direct {v6, p5, v0, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method private final drawCityName_Capital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V
    .locals 9

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result p5

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result p3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v1, p4

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getDrawWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p5, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0, p1, p5, p3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    if-ne v0, p2, :cond_0

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2, p1, p5, p3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->capitalLeftOver:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2, p1, p5, p3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    new-instance p2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr v0, p4

    invoke-direct {p2, v8, v8, v8, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->capitalRight:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    add-int v2, p5, p2

    iget p2, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    add-int/lit8 p2, p2, 0x5

    add-int/lit8 v4, p2, 0xa

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->capitalRight:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance p2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p2, v8, v8, v8, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CITIES_CAPITAL_FONT_SCALE:F

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/4 v2, 0x4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    add-int/2addr p5, p2

    add-int/lit8 v4, p5, 0x5

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p2

    iget p5, p0, Laoc/kingdoms/lukasz/map/map/City;->iHeight:I

    sub-int/2addr p2, p5

    div-int/lit8 p2, p2, 0x2

    add-int v5, p3, p2

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object p2, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object p3, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget p3, p3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object p5, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget p5, p5, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p4

    invoke-direct {v6, p2, p3, p5, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method private final drawCityName_Capital_Civ(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V
    .locals 10

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v0

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result p3

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v2, p4

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v1, v9, v9, v9, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getDrawWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    if-ne v1, p2, :cond_0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeftOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, p4

    invoke-direct {v1, v9, v9, v9, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalRight:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int v3, v0, v2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameWidth:I

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v5, v2, 0xa

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->capitalRight:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v9, v9, v9, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CITIES_CAPITAL_FONT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities;->capitalCityName:Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;

    add-int/lit8 v5, v0, 0x5

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v6, p3

    invoke-interface/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method


# virtual methods
.method public final drawCity(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V
    .locals 2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    iget p4, p2, Laoc/kingdoms/lukasz/map/province/Province;->cityScale:F

    sget-object p6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {p6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result p6

    mul-float/2addr p4, p6

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result p6

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez p6, :cond_0

    new-instance p6, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p6, v1, v1, v1, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object p5, p5, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget p6, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {p5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result p6

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result p2

    add-int/2addr p6, p2

    int-to-float p2, p6

    mul-float/2addr p2, p3

    sget-object p6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object p6, p6, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p4

    div-float/2addr p6, v0

    sub-float/2addr p2, p6

    float-to-int p2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result p6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr p6, v1

    int-to-float p6, p6

    mul-float/2addr p6, p3

    float-to-int p3, p6

    sget-object p6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object p6, p6, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p4

    div-float/2addr p6, v0

    float-to-int p6, p6

    sub-int/2addr p3, p6

    invoke-virtual {p5, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_0

    :cond_0
    new-instance p6, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p6, v1, v1, v1, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object p5, p5, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget p6, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {p5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result p6

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result p2

    add-int/2addr p6, p2

    int-to-float p2, p6

    mul-float/2addr p2, p3

    sget-object p6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object p6, p6, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p4

    div-float/2addr p6, v0

    sub-float/2addr p2, p6

    float-to-int p2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result p6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr p6, v1

    int-to-float p6, p6

    mul-float/2addr p6, p3

    float-to-int p3, p6

    sget-object p6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object p6, p6, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p4

    div-float/2addr p6, v0

    float-to-int p6, p6

    sub-int/2addr p3, p6

    invoke-virtual {p5, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    :goto_0
    return-void
.end method

.method public final drawCityName_Capital_CivFlag_War(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V
    .locals 3

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v0

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result p3

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p4, v2

    invoke-direct {v1, v2, v2, v2, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p4

    invoke-static {p4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p4

    iget p4, p4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    const/4 v1, 0x4

    if-ne p4, v1, :cond_0

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_l:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_l:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr v0, p4

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalMask_l:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_l:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    invoke-virtual {p2, p1, v0, p3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    const/4 p4, 0x1

    if-le p2, p4, :cond_1

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr v0, p4

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalMask:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    invoke-virtual {p2, p1, v0, p3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_0

    :cond_1
    sget p2, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_s:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_s:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr v0, p4

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalMask_s:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalWar_s:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    invoke-virtual {p2, p1, v0, p3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :goto_0
    return-void
.end method

.method public final drawCity_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/map/map/Map;->drawProvincesFlags:Laoc/kingdoms/lukasz/map/map/Map$DrawProvincesFlags;

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v5

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Laoc/kingdoms/lukasz/map/map/Map$DrawProvincesFlags;->drawCity_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFII)V

    return-void
.end method

.method public final drawCity_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName_Capital_Civ(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V

    return-void
.end method

.method public final drawCity_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V
    .locals 2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    iget p4, p2, Laoc/kingdoms/lukasz/map/province/Province;->cityScale:F

    sget-object p6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {p6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result p6

    mul-float/2addr p4, p6

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result p6

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez p6, :cond_0

    new-instance p6, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p6, v1, v1, v1, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object p5, p5, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget p6, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {p5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result p6

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result p2

    add-int/2addr p6, p2

    int-to-float p2, p6

    mul-float/2addr p2, p3

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p4

    div-float/2addr p6, v0

    sub-float/2addr p2, p6

    float-to-int p2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result p6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr p6, v1

    int-to-float p6, p6

    mul-float/2addr p6, p3

    float-to-int p3, p6

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p4

    div-float/2addr p6, v0

    float-to-int p6, p6

    sub-int/2addr p3, p6

    invoke-virtual {p5, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_0

    :cond_0
    new-instance p6, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p6, v1, v1, v1, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object p5, p5, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget p6, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {p5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result p6

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result p2

    add-int/2addr p6, p2

    int-to-float p2, p6

    mul-float/2addr p2, p3

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p4

    div-float/2addr p6, v0

    sub-float/2addr p2, p6

    float-to-int p2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result p6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr p6, v1

    int-to-float p6, p6

    mul-float/2addr p6, p3

    float-to-int p3, p6

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p4

    div-float/2addr p6, v0

    float-to-int p6, p6

    sub-int/2addr p3, p6

    invoke-virtual {p5, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    :goto_0
    return-void
.end method

.method public final drawCity_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V
    .locals 9

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    aget v0, v0, v1

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p5, v3, v3, v3, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object p4, p4, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget p5, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result p5

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result p2

    add-int/2addr p5, p2

    int-to-float p2, p5

    mul-float/2addr p2, p3

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, v0

    div-float/2addr p5, v2

    sub-float/2addr p2, p5

    float-to-int p2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result p5

    sget-object p6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p6}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result p6

    add-int/2addr p5, p6

    int-to-float p5, p5

    mul-float/2addr p5, p3

    float-to-int p3, p5

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, v0

    div-float/2addr p5, v2

    float-to-int p5, p5

    sub-int/2addr p3, p5

    invoke-virtual {p4, p1, p2, p3, v0}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto/16 :goto_0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v3, v3, v3, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object p5, p5, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v1

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, p3

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    div-float/2addr v4, v2

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-virtual {p5, p1, v1, v3, v0}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v1

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result p2

    add-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p3

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p6

    div-float/2addr v1, v2

    sub-float/2addr p2, v1

    float-to-int v5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result p2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr p2, v1

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v0

    div-float/2addr p3, v2

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float p5, p5

    add-float/2addr p3, p5

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 p5, p5, 0x2

    int-to-float p5, p5

    add-float/2addr p3, p5

    float-to-int p3, p3

    add-int v6, p2, p3

    move-object v3, p0

    move-object v4, p1

    move v7, p4

    move v8, p6

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    :goto_0
    return-void
.end method

.method public final drawCity_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V
    .locals 6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result p5

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result p2

    add-int/2addr p5, p2

    int-to-float p2, p5

    mul-float/2addr p2, p3

    iget p5, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float p5, p5

    mul-float/2addr p5, p6

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p5, v0

    sub-float/2addr p2, p5

    float-to-int v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result p2

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result p5

    add-int/2addr p2, p5

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int v3, p2

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    iget p2, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    aget p1, p1, p2

    return-void
.end method

.method public final drawCity_Name(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V
    .locals 8

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    aget v5, v1, v2

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v1, :cond_1

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName_Capital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v0, v1

    mul-float/2addr v0, p3

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p5

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    float-to-int v6, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int v3, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, v6

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v1, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName_Capital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v0, v1

    mul-float/2addr v0, p3

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p5

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    float-to-int v6, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int v3, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, v6

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    :goto_0
    return-void
.end method

.method public final drawCity_NameNotCapital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V
    .locals 9

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    aget v0, v0, v1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lez v1, :cond_0

    iget-boolean v1, p2, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v1

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result p2

    add-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p3

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p5

    div-float/2addr v1, v2

    sub-float/2addr p2, v1

    float-to-int v5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result p2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr p2, v1

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v0

    div-float/2addr p3, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p3, v0

    float-to-int p3, p3

    add-int v6, p2, p3

    move-object v3, p0

    move-object v4, p1

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p2, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v1

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result p2

    add-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p3

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p5

    div-float/2addr v1, v2

    sub-float/2addr p2, v1

    float-to-int v5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result p2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr p2, v1

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v0

    div-float/2addr p3, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p3, v0

    float-to-int p3, p3

    add-int v6, p2, p3

    move-object v3, p0

    move-object v4, p1

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getDrawPosX(IF)I
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    mul-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public final getDrawPosY(IF)I
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/City;->imageID:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/City;->iCityLevel:I

    aget v0, v0, v1

    mul-float/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    add-int/2addr p1, p2

    return p1
.end method

.method public final getDrawWidth()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public final getPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iPosX:I

    return v0
.end method

.method public final getPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iPosY:I

    return v0
.end method

.method public final setCityName(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->updateCityNameWidth()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceName(Ljava/lang/String;)V

    new-instance p2, Laoc/kingdoms/lukasz/map/map/City$2;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rebuildProvNameData"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Laoc/kingdoms/lukasz/map/map/City$2;-><init>(Laoc/kingdoms/lukasz/map/map/City;Ljava/lang/String;I)V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_0
    return-void
.end method

.method public final setCityNameOriginal(I)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityNameOriginal:Ljava/lang/String;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityNameOriginal:Ljava/lang/String;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/City;->updateCityNameWidth()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceName(Ljava/lang/String;)V

    new-instance v0, Laoc/kingdoms/lukasz/map/map/City$1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buildProvNameData"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Laoc/kingdoms/lukasz/map/map/City$1;-><init>(Laoc/kingdoms/lukasz/map/map/City;Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_0
    return-void
.end method

.method protected final updateCityNameWidth()V
    .locals 3

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/City;->iWidth:I

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/City;->iHeight:I

    return-void
.end method
