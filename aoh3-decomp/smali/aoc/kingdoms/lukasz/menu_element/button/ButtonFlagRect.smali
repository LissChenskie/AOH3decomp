.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonFlagRect.java"


# instance fields
.field public iCivID:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const-string v1, ""

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->fontID:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->iTextPositionX:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

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

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->init(Ljava/lang/String;IIIIIIZZZZ)V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON_FLAG:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    move v0, p1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->iCivID:I

    return-void
.end method

.method public static getButtonHeight()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getButtonWidth()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method public actionElement()V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->iCivID:I

    if-ltz v0, :cond_0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iRebuildToCivID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eqz v2, :cond_1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eq v2, v3, :cond_1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sput v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->iCivID:I

    if-ne v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-interface {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->setProvinceID(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public actionElementPPM()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getCurrent()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getCurrent()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getCurrent()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getCurrent()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getCurrent()I

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
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getFlagCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getFlagCivID()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getFlagCivID()I

    move-result p4

    const/4 v0, 0x1

    if-ltz p4, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getFlagCivID()I

    move-result p4

    invoke-static {p4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    goto :goto_0

    :cond_0
    sget p4, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    :goto_0
    sget-object p4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v0, 0x84c0

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagRect2Mask:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getPosY()I

    move-result p4

    add-int v3, p4, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getPosY()I

    move-result p2

    add-int v3, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method public getCurrent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->iCivID:I

    return v0
.end method

.method public getFlagCivID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->iCivID:I

    return v0
.end method

.method public setIsHovered(Z)V
    .locals 0

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setIsHovered(Z)V

    if-eqz p1, :cond_0

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlagRect;->iCivID:I

    sput p1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    :cond_0
    return-void
.end method
