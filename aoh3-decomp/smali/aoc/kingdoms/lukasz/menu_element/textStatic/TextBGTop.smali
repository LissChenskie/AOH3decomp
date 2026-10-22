.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "TextBGTop.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 12

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v6, 0x14

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->init(Ljava/lang/String;IIIIIIZZZZ)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->getTextWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    move-object v1, p0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->setWidth(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->init(Ljava/lang/String;IIIIIIZZZZ)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->iTextWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 11

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->getPosX()I

    move-result p4

    add-int v6, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->getPosY()I

    move-result p2

    add-int v7, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->getHeight()I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxTOP(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->getTextToDraw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->getPosX()I

    move-result v0

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->textPosition:Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;

    invoke-interface {v3}, Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;->getTextPosition()I

    move-result v3

    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->iTextHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    add-int v4, p2, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBGTop;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
