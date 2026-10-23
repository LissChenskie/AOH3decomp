.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;
.source "Text_InfoTop.java"


# instance fields
.field public colorText:Lcom/badlogic/gdx/graphics/Color;

.field public colorTextActive:Lcom/badlogic/gdx/graphics/Color;

.field public colorTextHover:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e30b0b1

    const v2, 0x3db8b8b9

    const v3, 0x3d60e0e1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorText:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3df0f0f1

    const v2, 0x3d20a0a1

    const v3, 0x3cc0c0c1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextHover:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3da8a8a9

    const v2, 0x3c008081

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextActive:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->fontID:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->iTextPositionX:I

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setPosX(I)V

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setPosY(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setWidth(I)V

    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setHeight(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->updateTextPosition()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e30b0b1

    const v2, 0x3db8b8b9

    const v3, 0x3d60e0e1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorText:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3df0f0f1

    const v2, 0x3d20a0a1

    const v3, 0x3cc0c0c1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextHover:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3da8a8a9

    const v2, 0x3c008081

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextActive:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->fontID:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->iTextPositionX:I

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setPosX(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setPosY(I)V

    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setWidth(I)V

    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setHeight(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->updateTextPosition()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 6

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->fontID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->getPosX()I

    move-result p5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p5, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->getTextWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p5, v0

    add-int v3, p5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->getHeight()I

    move-result p5

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->iTextHeight:I

    sub-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p2, p5

    add-int v4, p2, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextActive:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextActive:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextActive:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    mul-float/2addr v4, v0

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextHover:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextHover:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextHover:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    mul-float/2addr v4, v0

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorText:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorText:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorText:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    mul-float/2addr v4, v0

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object p1
.end method
