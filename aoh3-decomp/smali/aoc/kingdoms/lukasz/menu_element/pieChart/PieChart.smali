.class public Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "PieChart.java"


# instance fields
.field protected animationTimer:J

.field protected iPieChartHeight:I

.field protected iPieChartWidth:I

.field protected pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;


# direct methods
.method public constructor <init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V
    .locals 2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->animationTimer:J

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->setPosX(I)V

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->setPosY(I)V

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->setWidth(I)V

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->setHeight(I)V

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->fontID:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartWidth:I

    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartHeight:I

    sget-object p1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->PIECHART:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object p6, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    iput-object p5, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->sortAndBuild_PieChartValues()V

    sget-wide p1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->animationTimer:J

    return-void
.end method


# virtual methods
.method protected animationPerc()F
    .locals 4

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->animationTimer:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 11

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getPosX()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getHeight()I

    move-result v9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->getWidth()I

    move-result v10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->drawPieChart(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIII)V

    return-void
.end method

.method public draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZFLcom/badlogic/gdx/graphics/Color;)V
    .locals 13

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getPosX()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getHeight()I

    move-result v9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->getWidth()I

    move-result v10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->drawPieChart2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIIIFLcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawPieChart(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIII)V
    .locals 13

    move-object v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getPieChartBackground()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    add-int v11, p6, p2

    add-int v12, p7, p3

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartWidth:I

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartHeight:I

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    if-nez p4, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getIsHovered()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v9, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->animationPerc()F

    move-result v10

    move-object v2, p1

    move v4, v11

    move v5, v12

    invoke-virtual/range {v1 .. v10}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;ZF)V

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartWidth:I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartHeight:I

    move-object p2, v1

    move-object/from16 p3, p1

    move/from16 p4, v11

    move/from16 p5, v12

    move/from16 p6, v2

    move/from16 p7, v3

    invoke-virtual/range {p2 .. p7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method protected drawPieChart2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIIIFLcom/badlogic/gdx/graphics/Color;)V
    .locals 15

    move-object v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG2:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v13, p6, p2

    add-int v14, p7, p3

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartWidth:I

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartHeight:I

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    if-nez p4, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getIsHovered()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v9, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->animationPerc()F

    move-result v10

    move-object/from16 v2, p1

    move v4, v13

    move v5, v14

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v1 .. v12}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;ZFFLcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartWidth:I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartHeight:I

    move-object/from16 p2, v1

    move-object/from16 p3, p1

    move/from16 p4, v13

    move/from16 p5, v14

    move/from16 p6, v2

    move/from16 p7, v3

    invoke-virtual/range {p2 .. p7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method public getPieChartBackground()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method
