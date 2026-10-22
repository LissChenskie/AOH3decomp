.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;
.source "Text_Desc_SimpleNewGame.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    sget-boolean p1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->expandCivDesc:Z

    if-nez p1, :cond_1

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->iLineSize:I

    const/4 p2, 0x3

    if-le p1, p2, :cond_0

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->iLineSize:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->iLineSize:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->sLines:Ljava/util/List;

    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->iLineSize:I

    add-int/lit8 p2, p2, -0x1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->sLines:Ljava/util/List;

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->iLineSize:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ".."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->iTextHeight:I

    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->iLineSize:I

    mul-int/2addr p1, p2

    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->iLineSize:I

    add-int/lit8 p2, p2, -0x1

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getPaddingY()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->setHeight(I)V

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getClickable()Z

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getIsHovered()Z

    move-result v5

    invoke-static {v4, v5, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getBoxAlpha(ZZZ)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getHeight()I

    move-result v5

    const v6, 0x3f4ccccd    # 0.8f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->activeSort:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->activeSort:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->activeSort:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->activeSort:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    const/4 v4, 0x0

    sget-boolean v5, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->expandCivDesc:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->iLineSize:I

    if-ge v6, v0, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->fontID:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->sLines:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getPadding()I

    move-result v3

    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getPaddingY()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->iTextHeight:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/2addr v4, v6

    add-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_HOVERED:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_DESC_SIMPLE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_DISABLED:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method
