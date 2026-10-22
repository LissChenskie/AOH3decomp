.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;
.source "Text_DescScenarios.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    sget-object p1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TRANSPARENT_BACKGROUND:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;IIII)V

    sget-object p1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TRANSPARENT_BACKGROUND:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 7

    const/4 p5, 0x0

    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iLineSize:I

    if-ge p5, v0, :cond_0

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->fontID:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getPadding()I

    move-result v1

    add-int/2addr v0, v1

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getPaddingY()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iTextHeight:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    mul-int/2addr v1, p5

    add-int/2addr v0, v1

    add-int v5, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->updateTextPosition()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iLineSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iTextWidth:I

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getPadding()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    array-length v3, p1

    const-string v4, ""

    move v5, v0

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->fontID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, p1, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v7, v7

    iput v7, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iTextWidth:I

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iTextWidth:I

    add-int/2addr v6, v7

    if-ge v6, v2, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, p1, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p1, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iTextWidth:I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iTextHeight:I

    :cond_3
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iLineSize:I

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iTextHeight:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr p1, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getPaddingY()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->setHeight(I)V

    return-void
.end method
