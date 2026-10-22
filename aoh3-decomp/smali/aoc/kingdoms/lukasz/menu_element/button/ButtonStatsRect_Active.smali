.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonStatsRect_Active.java"


# static fields
.field protected static final ANIMATION_T:I = 0x3e8

.field protected static animationState:I

.field protected static lTimeAnimation:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 12

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v3, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->init(Ljava/lang/String;IIIIIIZZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 12

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v3, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p6

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->init(Ljava/lang/String;IIIIIIZZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 12

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p7

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->init(Ljava/lang/String;IIIIIIZZZZ)V

    return-void
.end method

.method public static final getBoxAlpha(ZZZ)F
    .locals 0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_0

    const p0, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x3f333333    # 0.7f

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_2
    const p0, 0x3e4ccccd    # 0.2f

    :goto_0
    return p0
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->drawButtonBG_setColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->animationState:I

    if-ltz v0, :cond_2

    const-wide/16 v7, 0x3e8

    const/high16 v1, 0x447a0000    # 1000.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x2

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->lTimeAnimation:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v2, v7

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->animationState:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->animationState:I

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->lTimeAnimation:J

    goto/16 :goto_0

    :cond_0
    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x2

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getWidth()I

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

    sget-wide v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->lTimeAnimation:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v2, v7

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->animationState:I

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->lTimeAnimation:J

    :cond_1
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_2
    return-void
.end method

.method public drawButtonBG_setColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 4

    new-instance p2, Lcom/badlogic/gdx/graphics/Color;

    sget-object p3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget p3, p3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getClickable()Z

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getIsHovered()Z

    move-result v3

    invoke-static {v2, v3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getBoxAlpha(ZZZ)F

    move-result p4

    invoke-direct {p2, p3, v0, v1, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getTextToDraw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getPosX()I

    move-result v0

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->textPosition:Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;

    invoke-interface {v3}, Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;->getTextPosition()I

    move-result v3

    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->iTextHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    add-int v4, p2, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public setIsHovered(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setIsHovered(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->lTimeAnimation:J

    const/4 p1, 0x0

    sput p1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->animationState:I

    return-void
.end method
