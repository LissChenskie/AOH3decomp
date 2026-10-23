.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;
.source "Text_StaticBG.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>()V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->iTextPositionX:I

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->setPosX(I)V

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->setPosY(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->setWidth(I)V

    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->setHeight(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->setText(Ljava/lang/String;)V

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getWidth()I

    move-result p1

    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->iTextWidth:I

    if-ge p1, p2, :cond_0

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->iTextWidth:I

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->setWidth(I)V

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->updateTextPosition()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>()V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->fontID:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->iTextPositionX:I

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->setPosX(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->setPosY(I)V

    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->setWidth(I)V

    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->setHeight(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->updateTextPosition()V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->iTextWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->getWidth()I

    move-result p5

    if-lez p3, :cond_0

    move p6, p3

    goto :goto_1

    :cond_0
    move p6, p1

    :goto_1
    sub-int/2addr p5, p6

    if-lt p4, p5, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    const/4 p5, 0x5

    if-le p4, p5, :cond_1

    const/4 p4, 0x1

    add-int/2addr p2, p4

    const/16 p5, 0x64

    if-ge p2, p5, :cond_1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->getText()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->getText()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p7

    add-int/lit8 p7, p7, -0x3

    invoke-static {p4, p7}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-virtual {p6, p1, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ".."

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 7

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->fontID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->getPosX()I

    move-result v0

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    invoke-interface {v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;->getTextPosition()I

    move-result v3

    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_HOVERED:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_DISABLED:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->sText:Ljava/lang/String;

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->iTextWidth:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->iTextHeight:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->getHeight()I

    move-result p1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->iTextHeight:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->iTextHeight:I

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
