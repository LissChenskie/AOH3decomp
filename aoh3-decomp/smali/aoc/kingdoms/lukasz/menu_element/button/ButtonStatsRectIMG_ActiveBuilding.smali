.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;
.source "ButtonStatsRectIMG_ActiveBuilding.java"


# instance fields
.field public building:I

.field public buildingID:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;-><init>(Ljava/lang/String;IIIIIII)V

    iput p9, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->building:I

    iput p10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->buildingID:I

    return-void
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 12

    move-object v0, p0

    move-object v8, p1

    move/from16 v9, p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getCurrent()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->building:I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->buildingID:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->underConstruction(II)F

    move-result v10

    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    const/high16 v11, 0x3f800000    # 1.0f

    if-ltz v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosX()I

    move-result v1

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    const v1, 0x3f7d70a4    # 0.99f

    cmpg-float v1, v10, v1

    if-gez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosX()I

    move-result v1

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v11, v10

    mul-float/2addr v1, v5

    float-to-int v5, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getClickable()Z

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getIsHovered()Z

    move-result v6

    invoke-static {v5, v6, v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getBoxAlpha(ZZZ)F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosX()I

    move-result v1

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getClickable()Z

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getIsHovered()Z

    move-result v6

    invoke-static {v5, v6, v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getBoxAlpha(ZZZ)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->maxIconWidth:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->maxIconWidth:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getCurrent()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->building:I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->buildingID:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding$1;

    const-string v2, "rebuildBuilding2"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding$1;-><init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->animationState:I

    if-ltz v1, :cond_5

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->animationState:I

    const-wide/16 v9, 0x3e8

    const/high16 v2, 0x447a0000    # 1000.0f

    if-nez v1, :cond_3

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float/2addr v1, v11

    div-float/2addr v1, v2

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v5, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v9

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->animationState:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->animationState:I

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->lTimeAnimation:J

    goto/16 :goto_1

    :cond_3
    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float/2addr v1, v11

    div-float/2addr v1, v2

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->getWidth()I

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

    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v9

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->animationState:I

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_ActiveBuilding;->lTimeAnimation:J

    :cond_4
    :goto_1
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_5
    return-void
.end method
