.class public Laoc/kingdoms/lukasz/menu_element/button/Button;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;,
        Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;
    }
.end annotation


# static fields
.field protected static final COLOR_BUTTON_MENU_HOVER_BG:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field protected checkbox:Z

.field private checkboxState:Z

.field protected iTextHeight:I

.field protected iTextPositionX:I

.field protected iTextWidth:I

.field protected oCheckbox:Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;

.field protected sText:Ljava/lang/String;

.field protected textPosition:Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button;->COLOR_BUTTON_MENU_HOVER_BG:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextWidth:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkbox:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkboxState:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIZ)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextWidth:I

    const/4 v0, 0x0

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkbox:Z

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkboxState:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button;->init(Ljava/lang/String;IIIIIIZZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextWidth:I

    const/4 v0, 0x0

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkbox:Z

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkboxState:Z

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button;->init(Ljava/lang/String;IIIIIIZZZZ)V

    return-void
.end method


# virtual methods
.method public buildCheckbox()Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkbox:Z

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/button/Button$3;-><init>(Laoc/kingdoms/lukasz/menu_element/button/Button;)V

    return-object v0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/Button$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/button/Button$4;-><init>(Laoc/kingdoms/lukasz/menu_element/button/Button;)V

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    goto :goto_0

    :cond_0
    const v0, 0x3ee66666    # 0.45f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->oCheckbox:Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;

    invoke-interface {v0, p1, p2, p3, p5}, Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;->drawCheckBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    if-eqz p4, :cond_0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenuH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button;->COLOR_BUTTON_MENU_HOVER_BG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenuH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_FRAME2:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_FRAME2:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_FRAME2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_FRAME2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x2

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getTextToDraw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v0

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->textPosition:Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;

    invoke-interface {v3}, Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;->getTextPosition()I

    move-result v3

    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    add-int v4, p2, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getCheckboxState()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkboxState:Z

    return v0
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_HOVERED:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_DISABLED:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextHeight:I

    return v0
.end method

.method public getTextPos()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextPositionX:I

    return v0
.end method

.method public getTextToDraw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextWidth:I

    return v0
.end method

.method public final init(Ljava/lang/String;IIIIIIZZZZ)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->fontID:I

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setPosX(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setPosY(I)V

    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setWidth(I)V

    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setHeight(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setText(Ljava/lang/String;)V

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextPositionX:I

    if-gez p3, :cond_0

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/button/Button$1;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/button/Button$1;-><init>(Laoc/kingdoms/lukasz/menu_element/button/Button;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->textPosition:Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;

    goto :goto_0

    :cond_0
    new-instance p1, Laoc/kingdoms/lukasz/menu_element/button/Button$2;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/button/Button$2;-><init>(Laoc/kingdoms/lukasz/menu_element/button/Button;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->textPosition:Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;

    :goto_0
    iput-boolean p10, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkbox:Z

    iput-boolean p11, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkboxState:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->buildCheckbox()Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->oCheckbox:Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;

    invoke-virtual {p0, p8}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setClickable(Z)V

    invoke-virtual {p0, p9}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setVisible(Z)V

    return-void
.end method

.method public final setCheckbox(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkbox:Z

    return-void
.end method

.method public setCheckboxState(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkboxState:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->sText:Ljava/lang/String;

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->fontID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextWidth:I

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextHeight:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextHeight:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextWidth:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
