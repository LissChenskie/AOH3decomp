.class public Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "Button_QueueBuilding.java"


# instance fields
.field public building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

.field public provinceID:I


# direct methods
.method public constructor <init>(IIILaoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v1, 0x0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v3, -0x1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->init(Ljava/lang/String;IIIIIIZZZZ)V

    move/from16 v0, p3

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->provinceID:I

    move-object/from16 v0, p4

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->provinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    return-void
.end method

.method public actionElementPPM()V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->cancelBuildingConstruction(III)Z

    return-void
.end method

.method public buildElementHover()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Flag;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Flag;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v4

    aget v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v3, 0x84c0

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMapMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosX()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosY()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v2, p1, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosY()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v0, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosX()I

    move-result v4

    add-int/2addr v4, p2

    add-int/2addr v4, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosY()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v3

    invoke-virtual {v1, p1, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosX()I

    move-result v4

    add-int/2addr v4, p2

    add-int/2addr v4, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    sub-int/2addr v2, v5

    add-int v5, v2, v3

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTimeLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTime()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v3

    mul-float/2addr v2, v6

    float-to-int v6, v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    move-object v2, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p4, p1, v1, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    return-void
.end method
