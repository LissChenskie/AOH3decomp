.class public Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;
.super Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;
.source "PieChart_WithStats.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x12c


# instance fields
.field protected TEXT_SCALE:F

.field public enableHideStats:Z

.field protected hideAnimation:Z

.field protected isDescriptionActive:Z

.field protected lTime:J

.field protected scrollable:Z

.field protected statsExtraWidth:I

.field protected statsPosY:I


# direct methods
.method public constructor <init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;-><init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    const p1, 0x3f3851ec    # 0.72f

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->isDescriptionActive:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->hideAnimation:Z

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->scrollable:Z

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->enableHideStats:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->initPieChartStats()V

    return-void
.end method

.method public constructor <init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;F)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;-><init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->isDescriptionActive:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->hideAnimation:Z

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->scrollable:Z

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->enableHideStats:Z

    iput p7, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->initPieChartStats()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 12

    move-object v11, p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getPosX()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getPosY()I

    move-result v7

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getWidth_StatsExtraWidth(I)I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getHeight_StatsExtraHeight()I

    move-result v9

    iget v10, v11, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->iPieChartWidth:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->drawPieChart(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIII)V

    return-void
.end method

.method protected drawPieChart(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIII)V
    .locals 15

    move-object v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p8

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getPieChartBackground()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    add-int v13, p6, p2

    add-int v5, p7, p3

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->iPieChartWidth:I

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->iPieChartHeight:I

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    const/4 v14, 0x0

    if-nez p4, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getIsHovered()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v9, v14

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    move v9, v2

    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->animationPerc()F

    move-result v10

    move-object/from16 v2, p1

    move v4, v13

    invoke-virtual/range {v1 .. v10}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;ZF)V

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->isDescriptionActive:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->hideAnimation:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v1, p3

    goto/16 :goto_5

    :cond_3
    :goto_2
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, p7

    sub-int v1, v1, p3

    move/from16 v2, p9

    neg-int v2, v2

    invoke-static {v11, v13, v1, v12, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontScale(F)V

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    add-int v9, p3, v1

    :goto_3
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v1

    if-ge v14, v1, :cond_5

    const v10, 0x3f39999a    # 0.725f

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v2

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v3

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v4

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v7, p6, p10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int v3, v2, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-int/2addr v2, v14

    add-int v2, p7, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v14

    add-int/2addr v2, v4

    add-int v4, v2, v9

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v2

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v3

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v4

    const v5, 0x3ed9999a    # 0.425f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int v3, v2, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-int/2addr v2, v14

    add-int v2, p7, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v14

    add-int/2addr v2, v4

    add-int v4, v2, v9

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v2, v12

    sub-int v5, v2, p10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v2

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v3

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int v3, v2, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-int/2addr v2, v14

    add-int v2, p7, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v14

    add-int/2addr v2, v4

    add-int v4, v2, v9

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v2, v12

    sub-int v5, v2, p10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    div-int/lit8 v6, v2, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v2

    add-int v3, v7, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-int/2addr v2, v14

    add-int v2, p7, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v14

    add-int/2addr v2, v4

    add-int/2addr v2, v9

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x4

    sub-int v4, v2, v4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v2, v12

    sub-int v5, v2, p10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    div-int/lit8 v6, v2, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v7, p6, p10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int v3, v2, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-int/2addr v2, v14

    add-int v2, p7, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v14

    add-int/2addr v2, v4

    add-int v4, v2, v9

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3ee66666    # 0.45f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int v3, v2, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-int/2addr v2, v14

    add-int v2, p7, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v14

    add-int/2addr v2, v4

    add-int v4, v2, v9

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v2, v12

    sub-int v5, v2, p10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int v3, v2, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-int/2addr v2, v14

    add-int v2, p7, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v14

    add-int/2addr v2, v4

    add-int v4, v2, v9

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v2, v12

    sub-int v5, v2, p10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    div-int/lit8 v6, v2, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v2

    add-int v3, v7, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v2, v4

    add-int v2, v2, p7

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/2addr v4, v14

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v14

    add-int/2addr v2, v4

    add-int v4, v2, v9

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v2, v12

    sub-int v5, v2, p10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    div-int/lit8 v6, v2, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_4
    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->fontID:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getPercentage()F

    move-result v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPercentage(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int v1, p6, p10

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v1, v4

    add-int v4, v1, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    mul-int/2addr v1, v14

    add-int v1, p7, v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v5, v14

    add-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v1, v5

    add-int v5, v1, v9

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_PIE_CHART_STATS:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    :cond_5
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    sub-int v1, v9, v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->resetFontScale()V

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :goto_5
    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

    add-int v1, p7, v1

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->iPieChartWidth:I

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->iPieChartHeight:I

    move-object/from16 p2, v2

    move-object/from16 p3, p1

    move/from16 p4, v13

    move/from16 p5, v1

    move/from16 p6, v3

    move/from16 p7, v4

    invoke-virtual/range {p2 .. p7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method public getDescription()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->isDescriptionActive:Z

    return v0
.end method

.method protected getHeight_StatsExtraHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->iPieChartHeight:I

    return v0
.end method

.method protected final getMaxHeight()I
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getScrollPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    return v0
.end method

.method public getScrollable()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->scrollable:Z

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getWidth_StatsExtraWidth(I)I

    move-result v0

    return v0
.end method

.method protected getWidth_StatsExtraWidth(I)I
    .locals 6

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->isDescriptionActive:Z

    const/high16 v1, 0x43960000    # 300.0f

    const-wide/16 v2, 0x12c

    if-eqz v0, :cond_1

    iget-wide v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    add-long/2addr v4, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I

    int-to-float v0, v0

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr p1, v0

    return p1

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I

    add-int/2addr p1, v0

    return p1

    :cond_1
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->hideAnimation:Z

    if-eqz v0, :cond_3

    iget-wide v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    add-long/2addr v4, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I

    add-int/2addr p1, v0

    int-to-float v0, v0

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sub-int/2addr p1, v0

    return p1

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->hideAnimation:Z

    :cond_3
    return p1
.end method

.method public initPieChartStats()V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->PIECHART_WITH_STATS:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->updateScrollable_Y()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->fontID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getPercentage()F

    move-result v5

    const/4 v6, 0x5

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPercentage(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/Court/zHJ/lOow;->eYNBpNd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getWidth()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I

    goto :goto_1

    :catch_1
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getWidth()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I

    :goto_1
    return-void
.end method

.method public scrollByWheel(I)V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getScrollPosY()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->setScrollPosY(I)V

    return-void
.end method

.method public setDescription(Z)V
    .locals 4

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->enableHideStats:Z

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->isDescriptionActive:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->isDescriptionActive:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->hideAnimation:Z

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    :goto_0
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v2, 0x25

    sub-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->animationTimer:J

    :cond_1
    return-void
.end method

.method public setScrollPosY(I)V
    .locals 3

    const/4 v0, 0x1

    if-lez p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosY(Z)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getMaxHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getHeight_StatsExtraHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getMaxHeight()I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getHeight_StatsExtraHeight()I

    move-result v1

    add-int/2addr p1, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosY(Z)V

    :cond_1
    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    :cond_2
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->scrollable:Z

    return-void
.end method

.method protected final updateScrollable_Y()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getMaxHeight()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getHeight_StatsExtraHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->scrollable:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->scrollable:Z

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    :goto_0
    return-void
.end method
