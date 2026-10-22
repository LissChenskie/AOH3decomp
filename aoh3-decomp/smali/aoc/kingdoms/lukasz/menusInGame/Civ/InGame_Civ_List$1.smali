.class Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;
.super Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsFlags;
.source "InGame_Civ_List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V
    .locals 7

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsFlags;-><init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ_List()V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->lTime:J

    return-void
.end method

.method protected animationPerc()F
    .locals 4

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->lTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public buildElementHover()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const-string v4, ""

    const-string v5, ": "

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v3, :cond_0

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Population"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_0
    iget-object v3, v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v3

    if-ge v7, v3, :cond_6

    if-ge v7, v6, :cond_6

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v10, v7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getCivID(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v11, v7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getValue()D

    move-result-wide v11

    invoke-static {v11, v12, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(DI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v9, v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getCivID(I)I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_POPULATION:Lcom/badlogic/gdx/graphics/Color;

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    if-ne v3, v8, :cond_1

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Economy"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v9, 0x2

    if-ne v3, v9, :cond_2

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Provinces"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v9, 0x3

    if-ne v3, v9, :cond_3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "MaximumManpower"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v9, 0x4

    if-ne v3, v9, :cond_4

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "RegimentsLimit"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v9, 0x5

    if-ne v3, v9, :cond_5

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Prestige"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_2
    iget-object v3, v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v3

    if-ge v7, v3, :cond_6

    if-ge v7, v6, :cond_6

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v10, v7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getCivID(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v11, v7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getValue()D

    move-result-wide v11

    invoke-static {v11, v12, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(DI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v9, v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getCivID(I)I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawPieChart(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIII)V
    .locals 8

    move-object v7, p1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v2

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;->getPosY()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v3

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;->getWidth()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;->getHeight()I

    move-result v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super/range {p0 .. p10}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsFlags;->drawPieChart(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIII)V

    return-void
.end method
