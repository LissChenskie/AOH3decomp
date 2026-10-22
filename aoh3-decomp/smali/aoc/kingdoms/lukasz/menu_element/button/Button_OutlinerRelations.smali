.class public Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_Outliner;
.source "Button_OutlinerRelations.java"


# static fields
.field public static progressBarBG:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public colorText:Lcom/badlogic/gdx/graphics/Color;

.field public fPerc:F

.field public iTextWidth2:I

.field public imageID:I

.field public improvingMode:Z

.field public lastTurnID:I

.field public lastValue:F

.field public maxTextWidth2:I

.field public pieChart:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;

.field public pieWidth:I

.field public progressBar:Lcom/badlogic/gdx/graphics/Color;

.field public sText2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e20a0a1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dc8c8c9

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIIZ)V
    .locals 10

    move-object v8, p0

    move-object v0, p2

    move/from16 v9, p9

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/Button_Outliner;-><init>(Ljava/lang/String;IIIII)V

    const/4 v1, 0x0

    iput v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iTextWidth2:I

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3e969697

    const v4, 0x3efafafb

    const v5, 0x3f25a5a6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v2, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v6, v6, v6, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v2, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->colorText:Lcom/badlogic/gdx/graphics/Color;

    iput v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->maxTextWidth2:I

    iput v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->pieWidth:I

    const v2, -0x368dfe5c    # -991258.25f

    iput v2, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastValue:F

    iput v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastTurnID:I

    const v2, 0x42c7cccd    # 99.9f

    iput v2, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fPerc:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON_FLAG:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v2, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    move/from16 v2, p7

    iput v2, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->imageID:I

    iput-boolean v9, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->improvingMode:Z

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->sText2:Ljava/lang/String;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v4, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fontID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, v3, p2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iTextWidth2:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v3, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fontID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v3, "-99"

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->maxTextWidth2:I

    const v0, 0x3eb33333    # 0.35f

    if-eqz v9, :cond_0

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v2, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_RED:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_RED:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_RED:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v2, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-direct {v2, v1, v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p6, v1

    iput v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->pieWidth:I

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p5, v2

    iget v3, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->pieWidth:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v4, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->pieWidth:I

    const/4 v5, 0x0

    move-object p1, v1

    move p2, v2

    move p3, v3

    move p4, v4

    move p5, v4

    move-object/from16 p6, v0

    move-object/from16 p7, v5

    invoke-direct/range {p1 .. p7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;-><init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    iput-object v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->pieChart:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;

    const/4 v0, -0x1

    :try_start_0
    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastTurnID:I

    iget v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v0

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastValue:F

    float-to-int v0, v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getOpinion_Color(I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->colorText:Lcom/badlogic/gdx/graphics/Color;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->improvingMode:Z

    xor-int/lit8 v3, v2, 0x1

    invoke-static {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->getHoverBetweenCivilizations(IIZZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 12

    move-object v1, p0

    move-object v10, p1

    move/from16 v11, p4

    const-string v0, ""

    :try_start_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastTurnID:I

    if-eq v2, v3, :cond_4

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fPerc:F

    iget-boolean v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->improvingMode:Z

    if-eqz v3, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getImprovingRelations_Perc(I)F

    move-result v3

    goto :goto_0

    :cond_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getDamagingRelations_Perc(I)F

    move-result v3

    :goto_0
    iput v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fPerc:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations$1;

    const-string v4, "rebuildRight"

    invoke-direct {v3, p0, v4}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations$1;-><init>(Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;Ljava/lang/String;)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_1
    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fPerc:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v3

    iget-boolean v4, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->improvingMode:Z

    if-eqz v4, :cond_2

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_2
    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_1
    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addDiplomacyLines(IILcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastTurnID:I

    :cond_4
    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastValue:F

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastValue:F

    float-to-int v2, v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getOpinion_String(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->setText(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastValue:F

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->sText2:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fontID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->sText2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iTextWidth2:I

    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastValue:F

    float-to-int v0, v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getOpinion_Color(I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->colorText:Lcom/badlogic/gdx/graphics/Color;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->imageID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    invoke-virtual {v0, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    const/4 v2, 0x1

    if-ltz v0, :cond_6

    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    goto :goto_3

    :cond_6
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    :goto_3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2Mask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosX()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->imageID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosX()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->imageID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->pieChart:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    const/4 v7, 0x0

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fPerc:F

    iget-object v9, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZFLcom/badlogic/gdx/graphics/Color;)V

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getTextToDraw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosX()I

    move-result v0

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->imageID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getTextHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v6, v0, p3

    invoke-virtual {p0, v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fontID:I

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->sText2:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->pieWidth:I

    sub-int/2addr v0, v2

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iTextWidth2:I

    sub-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getTextHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v6, v0, p3

    invoke-virtual {p0, v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button_Outliner;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->colorText:Lcom/badlogic/gdx/graphics/Color;

    return-object p1
.end method

.method public setIsHovered(Z)V
    .locals 0

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button_Outliner;->setIsHovered(Z)V

    if-eqz p1, :cond_0

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    sput p1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    :cond_0
    return-void
.end method
