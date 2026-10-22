.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "TextIcon_VerticalBuildings.java"


# instance fields
.field public iconHeight:I

.field public iconWidth:I

.field public imageID:I

.field public lastValue:I

.field public lastValue2:I

.field public mainTextColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 14

    move-object v12, p0

    move/from16 v13, p2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const v0, -0xf3916

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->lastValue:I

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->lastValue2:I

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->mainTextColor:Lcom/badlogic/gdx/graphics/Color;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->init(Ljava/lang/String;IIIIIIZZZZ)V

    iput v13, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->imageID:I

    invoke-direct {p0, v13}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getImageScale(I)F

    move-result v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->iconWidth:I

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->iconHeight:I

    return-void
.end method

.method public static final getBoxAlpha(ZZZ)F
    .locals 0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_0

    const p0, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x3f333333    # 0.7f

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_2
    const p0, 0x3e4ccccd    # 0.2f

    :goto_0
    return p0
.end method

.method private final getImageScale(I)F
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    int-to-float v0, v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getClickable()Z

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getIsHovered()Z

    move-result v5

    invoke-static {v4, v5, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getBoxAlpha(ZZZ)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getClickable()Z

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getIsHovered()Z

    move-result v5

    invoke-static {v4, v5, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getBoxAlpha(ZZZ)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->iconHeight:I

    sub-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getWidth()I

    move-result v4

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->iconHeight:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 15

    move-object v0, p0

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->imageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getPosX()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v3

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->iconHeight:I

    sub-int/2addr v1, v7

    add-int v5, v1, p3

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->iconWidth:I

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getTextToDraw()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v11, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->iconHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getTextWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v12, v1, p3

    move/from16 v1, p4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    const/high16 v14, 0x42b40000    # 90.0f

    move-object/from16 v8, p1

    invoke-static/range {v8 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadowRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_HOVERED:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->mainTextColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_DISABLED:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method

.method public getTextToDraw()Ljava/lang/String;
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->lastValue:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->lastValue2:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getUsedBuildingsSlots()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getUsedBuildingsSlots()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->setText(Ljava/lang/String;)V

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->lastValue:I

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getUsedBuildingsSlots()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->lastValue2:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->lastValue:I

    if-ne v1, v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->mainTextColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_VerticalBuildings;->mainTextColor:Lcom/badlogic/gdx/graphics/Color;

    :cond_2
    :goto_0
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
