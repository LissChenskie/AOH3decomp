.class public Laoc/kingdoms/lukasz/menu_element/Slider;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Slider.java"


# instance fields
.field private iCurrent:I

.field public iCurrentPosX:I

.field public iDifference_CurrentPosX:I

.field private iDifference_PosX:I

.field public iMax:I

.field public iMin:I

.field private iTextHeight:I

.field private iTextWidth:I

.field private lTime:J

.field public sText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrentPosX:I

    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->sText:Ljava/lang/String;

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextHeight:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_PosX:I

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 10

    move-object v9, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, -0x1

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrentPosX:I

    const/4 v1, 0x0

    iput-object v1, v9, Laoc/kingdoms/lukasz/menu_element/Slider;->sText:Ljava/lang/String;

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextWidth:I

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextHeight:I

    const-wide/16 v0, 0x0

    iput-wide v0, v9, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    const/4 v0, 0x0

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_PosX:I

    const-string v1, ""

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/Slider;->initSlider(Ljava/lang/String;IIIIIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrentPosX:I

    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->sText:Ljava/lang/String;

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextHeight:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_PosX:I

    invoke-virtual/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/Slider;->initSlider(Ljava/lang/String;IIIIIII)V

    return-void
.end method

.method private final updateCurrentPosX()V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrentPosX:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/Slider;->drawSliderBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/Slider;->drawSliderText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/Slider;->drawSliderBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public drawSliderBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->drawSliderBG_UpdateAnimation()V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object p5, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget p5, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {p4, p5, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v4, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosX()I

    move-result p4

    add-int v5, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosY()I

    move-result p4

    add-int v6, p4, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getHeight()I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object p5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget p5, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {p4, p5, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v4, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosX()I

    move-result p4

    add-int v5, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosY()I

    move-result p4

    add-int v6, p4, p3

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrentPosX:I

    iget p5, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    add-int v7, p4, p5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getWidth()I

    move-result v9

    invoke-static/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxProgress(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIII)V

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object p5, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget p5, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {p4, p5, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosX()I

    move-result p4

    add-int v5, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosY()I

    move-result p2

    add-int v6, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getHeight()I

    move-result v8

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final drawSliderBG_UpdateAnimation()V
    .locals 6

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    if-eqz v0, :cond_1

    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_PosX:I

    int-to-float v1, v0

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x43bb8000    # 375.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    const-wide/16 v4, 0x177

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    :cond_1
    return-void
.end method

.method public drawSliderBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 0

    return-void
.end method

.method public drawSliderText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 6

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getDrawText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getWidth()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p4, p5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getTextWidth()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p5

    add-int v3, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getTextHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    add-int v4, p2, p3

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const p2, 0x3f71eb85    # 0.945f

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {v5, p2, p2, p2, p3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_SLIDER_LEFT_BG:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_SLIDER_RIGHT_BG:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public final getCurrent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    return v0
.end method

.method public getDrawText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->sText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScrollable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextHeight:I

    return v0
.end method

.method public getTextPos()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    return v0
.end method

.method public getTextWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextWidth:I

    return v0
.end method

.method public initSlider(Ljava/lang/String;IIIIIII)V
    .locals 0

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/Slider;->setPosX(I)V

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/Slider;->setPosY(I)V

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/Slider;->setWidth(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/Slider;->setHeight(I)V

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->fontID:I

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->sText:Ljava/lang/String;

    iput p6, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    iput p7, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    iput p8, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateSlider(I)V

    sget-object p1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->SLIDER:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    return-void
.end method

.method public scrollByWheel(I)V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getCurrent()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/Slider;->setCurrent(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->actionElement()V

    return-void
.end method

.method public setCurrent(I)V
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrentPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    if-le p1, v1, :cond_0

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    goto :goto_0

    :cond_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    if-ge p1, v1, :cond_1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    goto :goto_0

    :cond_1
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    :goto_0
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateCurrentPosX()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateTextWidth()V

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrentPosX:I

    if-eq v0, p1, :cond_2

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    sub-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_PosX:I

    :cond_2
    return-void
.end method

.method public setMax(I)V
    .locals 1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    if-le v0, p1, :cond_0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateTextWidth()V

    :cond_0
    return-void
.end method

.method public setMin(I)V
    .locals 1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    if-ge v0, p1, :cond_0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateTextWidth()V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateTextWidth()V

    return-void
.end method

.method public updateSlider(I)V
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosX()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    int-to-float v0, v2

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    :cond_0
    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    if-ge p1, v0, :cond_1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    goto :goto_0

    :cond_1
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    if-le p1, v0, :cond_2

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    :cond_2
    :goto_0
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateCurrentPosX()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateTextWidth()V

    const/4 p1, 0x0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_PosX:I

    return-void
.end method

.method public final updateTextWidth()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getDrawText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextWidth:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextHeight:I

    return-void
.end method
