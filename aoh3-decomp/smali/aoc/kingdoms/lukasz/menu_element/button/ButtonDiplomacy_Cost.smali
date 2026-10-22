.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy;
.source "ButtonDiplomacy_Cost.java"


# instance fields
.field public iTextBonusH:I

.field public iTextBonusW:I

.field public sValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy;-><init>(Ljava/lang/String;IIIII)V

    iput-object p7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->sValue:Ljava/lang/String;

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, p2, p7}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p2, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->iTextBonusW:I

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->iTextBonusH:I

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->imageID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->iconY:I

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ea8f5c3    # 0.33f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->imageID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->iconY:I

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->sValue:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->iTextBonusH:I

    sub-int/2addr v0, v1

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->getPosY()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->iconH:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    add-int v5, v0, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v7, 0x42b40000    # 90.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadowRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->iLineSize:I

    if-ge v0, v1, :cond_1

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->fontID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->sLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->iLinesWidth:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v5, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->iY_Text:I

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->iTextHeight:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    add-int v6, v1, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonDiplomacy_Cost;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final getImageScale(I)F
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method
