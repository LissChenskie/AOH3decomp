.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;
.source "Text_StaticGoods.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>()V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput p8, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->iCurrent:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->fontID:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->iTextPositionX:I

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->setPosX(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->setPosY(I)V

    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->setWidth(I)V

    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->setHeight(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->updateTextPosition()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 6

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->fontID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getPosX()I

    move-result p5

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;->getTextPosition()I

    move-result v0

    add-int/2addr p5, v0

    add-int v3, p5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getHeight()I

    move-result p5

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->iTextHeight:I

    sub-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p2, p5

    add-int v4, p2, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {p4, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getPosX()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    add-int v3, p4, p3

    const/4 v4, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getHeight()I

    move-result p4

    div-int/lit8 v5, p4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getPosX()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getHeight()I

    move-result p4

    div-int/lit8 v5, p4, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getPosX()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    add-int v3, p4, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getHeight()I

    move-result p4

    div-int/lit8 v5, p4, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getPosX()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getHeight()I

    move-result p4

    div-int/lit8 v5, p4, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE3:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE3:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE3:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3f666666    # 0.9f

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    add-int v3, p4, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getHeight()I

    move-result p4

    div-int/lit8 v5, p4, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getPosY()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    add-int v3, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getHeight()I

    move-result p2

    div-int/lit8 v5, p2, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorButtonHover(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method
