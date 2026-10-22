.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonGame2.java"


# static fields
.field protected static final ANIMATION_T:I = 0x3e8

.field protected static animationState:I

.field public static colorGradient:Lcom/badlogic/gdx/graphics/Color;

.field public static colorGradientHover:Lcom/badlogic/gdx/graphics/Color;

.field private static final colorLine:Lcom/badlogic/gdx/graphics/Color;

.field protected static lTimeAnimation:J


# instance fields
.field public iCurrent:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e70f0f1

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3dc8c8c9

    const v4, 0x3e20a0a1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3df0f0f1

    const/high16 v2, 0x3f400000    # 0.75f

    const v3, 0x3e48c8c9

    const v4, 0x3e0c8c8d

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->colorGradientHover:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e848485

    const v2, 0x3f0ccccd    # 0.55f

    const v3, 0x3f048485

    const v4, 0x3edededf

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 14

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v0, 0x0

    move-object v13, p0

    iput v0, v13, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->iCurrent:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->init(Ljava/lang/String;IIIIIIZZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZI)V
    .locals 14

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v0, 0x0

    move-object v13, p0

    iput v0, v13, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->iCurrent:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->init(Ljava/lang/String;IIIIIIZZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZIZ)V
    .locals 14

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v0, 0x0

    move-object v13, p0

    iput v0, v13, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->iCurrent:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p7

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->init(Ljava/lang/String;IIIIIIZZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZZ)V
    .locals 14

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v0, 0x0

    move-object v13, p0

    iput v0, v13, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->iCurrent:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    move/from16 v12, p8

    invoke-virtual/range {v1 .. v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->init(Ljava/lang/String;IIIIIIZZZZ)V

    return-void
.end method

.method protected static final getColorLine()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    if-nez p4, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getButtonBG_Active()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->colorGradientHover:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getButtonBG()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getHeight()I

    move-result v1

    add-int/lit8 v5, v1, -0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3eb33333    # 0.35f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x3

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->animationState:I

    if-ltz v0, :cond_4

    const-wide/16 v7, 0x3e8

    const/high16 v1, 0x447a0000    # 1000.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v4, v1

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x2

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->lTimeAnimation:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v2, v7

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->animationState:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->animationState:I

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->lTimeAnimation:J

    goto/16 :goto_1

    :cond_2
    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int v4, v1, v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x2

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int v4, v1, v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->lTimeAnimation:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v2, v7

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->animationState:I

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->lTimeAnimation:J

    :cond_3
    :goto_1
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_4
    return-void
.end method

.method public getButtonBG()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonGame:I

    return v0
.end method

.method public getButtonBG_Active()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonGameH:I

    return v0
.end method

.method public getCurrent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->iCurrent:I

    return v0
.end method

.method public setCurrent(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->iCurrent:I

    return-void
.end method

.method public setIsHovered(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setIsHovered(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->lTimeAnimation:J

    const/4 p1, 0x0

    sput p1, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->animationState:I

    return-void
.end method
