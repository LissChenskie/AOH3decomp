.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Text_Static.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;
    }
.end annotation


# instance fields
.field protected iTextHeight:I

.field protected iTextPositionX:I

.field protected iTextWidth:I

.field protected sText:Ljava/lang/String;

.field protected textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosX(I)V

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosY(I)V

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setHeight(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setText(Ljava/lang/String;)V

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$1;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$1;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->fontID:I

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosX(I)V

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosY(I)V

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setHeight(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setText(Ljava/lang/String;)V

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$2;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$2;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextPositionX:I

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosX(I)V

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosY(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setHeight(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->updateTextPosition()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextPositionX:I

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosX(I)V

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosY(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setWidth(I)V

    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setHeight(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->updateTextPosition()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->fontID:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextPositionX:I

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosX(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosY(I)V

    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setWidth(I)V

    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setHeight(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->updateTextPosition()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->fontID:I

    iput p8, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iCurrent:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextPositionX:I

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosX(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosY(I)V

    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setWidth(I)V

    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setHeight(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->updateTextPosition()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 6

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->fontID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getPosX()I

    move-result p5

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;->getTextPosition()I

    move-result v0

    add-int/2addr p5, v0

    add-int v3, p5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getHeight()I

    move-result p5

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p2, p5

    add-int v4, p2, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f0f5c29    # 0.56f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f2e147b    # 0.68f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f51eb85    # 0.82f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f333333    # 0.7f

    const v1, 0x3f47ae14    # 0.78f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_0
    return-object p1
.end method

.method public getCurrent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iCurrent:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    return v0
.end method

.method public getTextWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    :try_start_0
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    iget p1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result p1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setWidth(I)V

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getHeight()I

    move-result p1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateTextPosition()V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextPositionX:I

    if-gez v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$3;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$4;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    :goto_0
    return-void
.end method
