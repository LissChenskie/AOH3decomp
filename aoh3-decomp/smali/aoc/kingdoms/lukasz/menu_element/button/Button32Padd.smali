.class public Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "Button32Padd.java"


# static fields
.field protected static final ANIMATION_T:I = 0x3e8

.field protected static animationState:I

.field public static final buttonColor:Lcom/badlogic/gdx/graphics/Color;

.field public static final buttonColor2:Lcom/badlogic/gdx/graphics/Color;

.field private static final colorLine:Lcom/badlogic/gdx/graphics/Color;

.field protected static lTimeAnimation:J


# instance fields
.field public iconImageID:I

.field public imgHeight:I

.field public imgWidth:I

.field public imgX:I

.field public imgY:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e848485

    const v2, 0x3f0ccccd    # 0.55f

    const v3, 0x3f048485

    const v4, 0x3edededf

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f20a0a1

    const v3, 0x3f028283

    const v4, 0x3e969697

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->buttonColor:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->buttonColor2:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 12

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->sText:Ljava/lang/String;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->fontID:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v7, p1, v0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->init(Ljava/lang/String;IIIIIIZZZZ)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->updateImgWH()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 12

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->sText:Ljava/lang/String;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->fontID:I

    const/4 v3, 0x0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v6, v0, v4

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v7, p1, v0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->init(Ljava/lang/String;IIIIIIZZZZ)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->updateImgWH()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    move v0, p1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    iget-object v1, v12, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->sText:Ljava/lang/String;

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->fontID:I

    const/4 v3, 0x0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v6, v0, v4

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->init(Ljava/lang/String;IIIIIIZZZZ)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->updateImgWH()V

    return-void
.end method

.method public static getButtonHeight()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->mapModesCivs:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected static final getColorLine()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 13

    move-object v0, p0

    move-object v9, p1

    move/from16 v8, p4

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getIsHovered()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    :goto_0
    const v5, 0x3f19999a    # 0.6f

    :goto_1
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosX()I

    move-result v1

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v10, 0x3f800000    # 1.0f

    if-nez v8, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->COLOR_BUTTON_MENU_HOVER_BG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v8, :cond_4

    :cond_3
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosX()I

    move-result v1

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->animationState:I

    if-ltz v1, :cond_7

    const-wide/16 v11, 0x3e8

    const/high16 v2, 0x447a0000    # 1000.0f

    if-nez v1, :cond_5

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float/2addr v1, v10

    div-float/2addr v1, v2

    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v5, v2

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v5, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v11

    cmp-long v1, v1, v3

    if-gez v1, :cond_6

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->animationState:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->animationState:I

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->lTimeAnimation:J

    goto/16 :goto_2

    :cond_5
    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float/2addr v1, v10

    div-float/2addr v1, v2

    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    sub-int v5, v2, v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    sub-int v5, v2, v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v11

    cmp-long v1, v1, v3

    if-gez v1, :cond_6

    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->animationState:I

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->lTimeAnimation:J

    :cond_6
    :goto_2
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_7
    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosX()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgX:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosY()I

    move-result v2

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgY:I

    add-int/2addr v2, v4

    add-int v4, v2, p3

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgWidth:I

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgHeight:I

    const/4 v7, 0x0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getFlipY()Z

    move-result v8

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->isActiveView()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->buttonColor2:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method

.method public getFlipY()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getSFX()I
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->isActiveView()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MAP_MODE1:I

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MAP_MODE0:I

    :goto_0
    return v0
.end method

.method public getWidth()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->maxWidth:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public imgScale()F
    .locals 1

    const v0, 0x3f59999a    # 0.85f

    return v0
.end method

.method public isActiveView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setIsHovered(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setIsHovered(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->lTimeAnimation:J

    const/4 p1, 0x0

    sput p1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->animationState:I

    return-void
.end method

.method public updateImgWH()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgWidth:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgHeight:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgX:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgY:I

    return-void
.end method
