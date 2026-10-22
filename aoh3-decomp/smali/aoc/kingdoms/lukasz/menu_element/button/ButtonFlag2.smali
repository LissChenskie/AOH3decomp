.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonFlag2.java"


# instance fields
.field public iCivID:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const-string v1, ""

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->fontID:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->iTextPositionX:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v8, p4

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->init(Ljava/lang/String;IIIIIIZZZZ)V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON_FLAG:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    move v0, p1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->iCivID:I

    return-void
.end method


# virtual methods
.method public actionElementPPM()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->getCurrent()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->getCurrent()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->getCurrent()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->getCurrent()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->getCurrent()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    :cond_0
    return-void
.end method

.method public buildElementHover()V
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->getFlagCivID()I

    move-result v2

    if-gez v2, :cond_0

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->rebelsFlag:I

    const/4 v4, 0x0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Rebels"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->getFlagCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->getFlagCivID()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->getFlagCivID()I

    move-result p4

    const/4 v0, 0x1

    if-gez p4, :cond_0

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->rebelsFlag:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->getFlagCivID()I

    move-result p4

    invoke-static {p4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    :goto_0
    sget-object p4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v0, 0x84c0

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagMaskDefault:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagMaskDefault:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v2, p4, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->getPosY()I

    move-result p4

    add-int/2addr p4, p3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagMaskDefault:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int v3, p4, v1

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagMaskDefault:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagMaskDefault:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, v0, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public getCurrent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->iCivID:I

    return v0
.end method

.method public getFlagCivID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->iCivID:I

    return v0
.end method

.method public setIsHovered(Z)V
    .locals 0

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setIsHovered(Z)V

    if-eqz p1, :cond_0

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag2;->iCivID:I

    if-lez p1, :cond_0

    sput p1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    :cond_0
    return-void
.end method
