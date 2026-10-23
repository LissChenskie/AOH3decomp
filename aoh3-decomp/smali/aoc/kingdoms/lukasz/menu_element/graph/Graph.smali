.class public Laoc/kingdoms/lukasz/menu_element/graph/Graph;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;
    }
.end annotation


# static fields
.field public static final ANIMATION_TIME:I = 0xfa

.field public static final AUTO_MOVE_TURN_TIME:I = 0x5aa

.field protected static final DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static final FONT_ID:I = 0x1

.field protected static final GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_LINE_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static POINTS_TEXT_SCALE:F

.field protected static final TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public bDecimal:B

.field public fAvaragePoint:F

.field public graphType:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

.field public iActiveButtonID:I

.field public iAvaragePosY:I

.field public iBestCivID:I

.field public iBestDescDataID:I

.field public iBestDescDataTextWidth:I

.field public iButtonsPosY:I

.field public iDataSize:I

.field public iDescOfTurnID:I

.field public iFixPosY:I

.field public iHoveredID:I

.field public iMaxPoint:I

.field public iMaxPoint_Text:I

.field public iMaxSize:I

.field public iMaxTextWidth:I

.field public iMinPoint:I

.field public iMinTextWidth:I

.field public iPointsPosXSize:I

.field public iWidthTextX:I

.field public iWidthTextX2:I

.field public iWidthTextY:I

.field public iWorstCivID:I

.field public iWorstDescDataID:I

.field public iWorstDescDataTextWidth:I

.field public iZeroPosY:I

.field public lAuto_Move_Turn_Time:J

.field protected lData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/graph/GraphData;",
            ">;"
        }
    .end annotation
.end field

.field public lPointsPosX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lSortedData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lTime:J

.field public lessThanTen:Z

.field public moveable:Z

.field public sTextX:Ljava/lang/String;

.field public sTextX2:Ljava/lang/String;

.field public sTextY:Ljava/lang/String;

.field public split100:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e30b0b1

    const v2, 0x3e189899

    const v3, 0x3e088889

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3da0a0a1

    const v3, 0x3df0f0f1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e19999a    # 0.15f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f52d2d3

    invoke-direct {v0, v1, v1, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINE_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f2fafb0

    invoke-direct {v0, v1, v1, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f4ccccd    # 0.8f

    sput v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZILaoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;Z)V
    .locals 4

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    const/4 v1, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iHoveredID:I

    iput-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->bDecimal:B

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lessThanTen:Z

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lTime:J

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lAuto_Move_Turn_Time:J

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->moveable:Z

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sTextX:Ljava/lang/String;

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sTextY:Ljava/lang/String;

    iput-object p9, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->graphType:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    iput-boolean p10, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->split100:Z

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_INCOME:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    if-ne p9, v1, :cond_0

    sget-object p9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p9, p9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    invoke-interface {p10, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p9, p9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    invoke-interface {p10, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object p9, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {p9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p9

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {p9, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object p9, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p9, v2, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWidthTextX:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object p9, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, p9, p2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWidthTextY:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setPosX(I)V

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setPosY(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setWidth(I)V

    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setHeight(I)V

    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setVisible(Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    sget-object p1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->GRAPH:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    move p1, v0

    :goto_1
    invoke-interface {p10}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    new-instance p2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-interface {p10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, p3, p4, v0}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;-><init>(ILjava/util/List;I)V

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->addData(Laoc/kingdoms/lukasz/menu_element/graph/GraphData;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, p8, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->loadData(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    return-void
.end method

.method protected static final getGraphButtonHeight()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected static final getGraphButtonWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final actionUp(I)V
    .locals 4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v0, v1

    if-gt v0, p1, :cond_5

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v0, v1

    if-lt v0, p1, :cond_5

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setDrawData(Z)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->loadData(I)V

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildGraph()V

    goto/16 :goto_1

    :cond_1
    const/4 p1, 0x0

    move v1, p1

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge p1, v2, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-le v1, v0, :cond_5

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setDrawData(Z)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->loadData(I)V

    :cond_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildGraph()V

    :cond_5
    :goto_1
    const/4 p1, -0x1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    return-void
.end method

.method protected final addData(Laoc/kingdoms/lukasz/menu_element/graph/GraphData;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateMoveable()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildGraph()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sortCivsByLastPoint()V

    return-void
.end method

.method public buildElementHover()V
    .locals 0

    return-void
.end method

.method protected final buildGraph()V
    .locals 8

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWorstCivID:I

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iBestCivID:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v2, v4, :cond_8

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v4

    if-eqz v4, :cond_3

    move v5, v0

    move v4, v1

    :goto_1
    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v6

    if-ge v4, v6, :cond_2

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v6

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    if-le v6, v7, :cond_0

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v6

    iput v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v6

    iput v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iBestCivID:I

    :cond_0
    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v6

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    if-gt v6, v7, :cond_1

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v6

    iput v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v6

    iput v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWorstCivID:I

    :cond_1
    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_7

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    goto/16 :goto_3

    :cond_3
    move v4, v1

    :goto_2
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v5

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    if-le v5, v6, :cond_4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v5

    iput v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v5

    iput v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iBestCivID:I

    :cond_4
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v5

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    if-gt v5, v6, :cond_5

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v5

    iput v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v5

    iput v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWorstCivID:I

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_7

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint_Text:I

    int-to-float v4, v2

    int-to-float v2, v2

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v5

    add-float/2addr v4, v2

    float-to-int v2, v4

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    const/high16 v2, 0x42c80000    # 100.0f

    const v3, 0x3f333333    # 0.7f

    :try_start_0
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    if-gez v4, :cond_9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    mul-float/2addr v4, v5

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v2

    float-to-int v4, v4

    neg-int v4, v4

    iput v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    sub-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    div-float/2addr v5, v0

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-int v0, v4

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iZeroPosY:I

    goto :goto_4

    :cond_9
    if-lez v4, :cond_a

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    sub-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    mul-float/2addr v4, v5

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v2

    sub-float/2addr v0, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    goto :goto_4

    :cond_a
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    :goto_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    sub-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    mul-float/2addr v5, v2

    mul-float/2addr v4, v5

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float/2addr v4, v2

    sub-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iAvaragePosY:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->roundAverage()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    move v4, v0

    :goto_5
    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    sub-int/2addr v5, v0

    if-ge v4, v5, :cond_b

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v7, v2

    mul-float/2addr v6, v7

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    sub-int/2addr v7, v0

    int-to-float v7, v7

    div-float/2addr v6, v7

    div-float/2addr v6, v2

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iPointsPosXSize:I

    :goto_6
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v1, v2, :cond_c

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v5

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    iget-object v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    invoke-virtual {v2, v4, v5, v6, v7}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->buildGraph(IIILjava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinTextWidth:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint_Text:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxTextWidth:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateDescInfo()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lAuto_Move_Turn_Time:J

    const-wide/16 v3, 0x5aa

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->incrementTurnDescInfo()V

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d989899

    const v3, 0x3db8b8b9

    const v4, 0x3d888889

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v3, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    const v11, 0x3f333333    # 0.7f

    mul-float/2addr v2, v11

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int v3, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v11

    float-to-int v4, v4

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->graphBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    sub-int/2addr v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float/2addr v6, v11

    float-to-int v6, v6

    sub-int/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v12, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    sub-int/2addr v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float/2addr v6, v11

    float-to-int v6, v6

    sub-int/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    sub-int/2addr v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float/2addr v6, v11

    float-to-int v6, v6

    sub-int/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/4 v2, 0x1

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sTextY:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWidthTextY:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v7, 0x42b40000    # 90.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadowRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sTextX:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v12

    float-to-int v5, v5

    sub-int/2addr v1, v5

    add-int v5, v1, p3

    sget-object v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->line_33:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iAvaragePosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v1, v9, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v1

    const/high16 v12, 0x40000000    # 2.0f

    if-gez v1, :cond_1

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    if-lez v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v8

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iZeroPosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v4, v8

    invoke-virtual {v1, v9, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v8

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    sub-int/2addr v3, v8

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iZeroPosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v8

    invoke-virtual {v1, v9, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/4 v2, 0x1

    const-string v3, "0"

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v11

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v8

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v4, v12

    float-to-int v4, v4

    add-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v5, v12

    float-to-int v5, v5

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v1, v5

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    sub-int/2addr v1, v5

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iZeroPosY:I

    add-int/2addr v1, v5

    sub-int/2addr v1, v8

    add-int v5, v1, p3

    move-object/from16 v1, p1

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    :cond_1
    iget-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lTime:J

    const-wide/16 v3, 0xfa

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    add-int v1, v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v2, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v3

    int-to-float v3, v3

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v13, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lTime:J

    sub-long/2addr v4, v13

    long-to-float v4, v4

    const/high16 v5, 0x437a0000    # 250.0f

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    neg-int v4, v4

    invoke-static {v9, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    invoke-virtual/range {p0 .. p3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :goto_0
    sget-object v13, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v8

    invoke-virtual {v1, v9, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iAvaragePosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v8

    invoke-virtual {v1, v9, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v8

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v11

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v8

    add-int v4, v2, p3

    const/4 v5, 0x1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v6, v2, -0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->split100:Z

    const-string v14, ""

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v3

    int-to-float v3, v3

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v3, v15

    const/16 v6, 0xa

    invoke-static {v3, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v11

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v8

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v4, v12

    float-to-int v4, v4

    add-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v16, 0x2

    add-int v5, v5, v16

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v5, v12

    float-to-int v5, v5

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v16, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    mul-float v5, v5, v16

    float-to-int v5, v5

    sub-int/2addr v1, v5

    add-int v5, v1, p3

    move-object/from16 v1, p1

    move v10, v6

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint_Text:I

    int-to-float v3, v3

    div-float/2addr v3, v15

    invoke-static {v3, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v11

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v8

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v4, v12

    float-to-int v4, v4

    add-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v5, v12

    float-to-int v5, v5

    add-int/2addr v1, v5

    add-int v5, v1, p3

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v11

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v8

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v4, v12

    float-to-int v4, v4

    add-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v5, v12

    float-to-int v5, v5

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v1, v5

    add-int v5, v1, p3

    move-object/from16 v1, p1

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint_Text:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v11

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v8

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v4, v12

    float-to-int v4, v4

    add-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v5, v12

    float-to-int v5, v5

    add-int/2addr v1, v5

    add-int v5, v1, p3

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v9, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sub-int/2addr v2, v8

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float/2addr v6, v11

    float-to-int v6, v6

    sub-int/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sub-int/2addr v2, v8

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v11

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    sub-int/2addr v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-virtual {v1, v9, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    const/4 v5, 0x1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v6, v2, -0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    add-int v1, v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v2, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    neg-int v4, v4

    invoke-static {v9, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 14

    move-object v0, p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v1

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v13, v2, :cond_7

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v2

    const v3, 0x3f333333    # 0.7f

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v3, v6

    add-int/2addr v5, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    add-int v5, v5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    add-int v6, v3, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v8

    iget-object v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    if-ltz v3, :cond_0

    iget-object v10, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v13, :cond_1

    :goto_1
    move v10, v4

    goto :goto_2

    :cond_0
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iHoveredID:I

    if-ltz v3, :cond_1

    iget-object v10, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v13, :cond_1

    goto :goto_1

    :cond_1
    move v10, v12

    :goto_2
    move-object v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v13

    move v11, v1

    invoke-virtual/range {v2 .. v11}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V

    goto/16 :goto_5

    :cond_2
    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBackAnimation()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x1c2

    add-long/2addr v5, v7

    sget-wide v7, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v2, v5, v7

    if-gtz v2, :cond_3

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v2, v12}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setBackAnimation(Z)V

    goto :goto_5

    :cond_3
    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v3, v6

    add-int/2addr v5, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    add-int v5, v5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    add-int v6, v3, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v8

    iget-object v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    iget-object v10, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v3, v10, :cond_5

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iHoveredID:I

    iget-object v10, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v3, v10, :cond_4

    goto :goto_3

    :cond_4
    move v10, v12

    goto :goto_4

    :cond_5
    :goto_3
    move v10, v4

    :goto_4
    move-object v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v13

    move v11, v1

    invoke-virtual/range {v2 .. v11}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V

    :cond_6
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final getButtonsHeight()I
    .locals 3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    mul-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final getButtonsPosY(I)I
    .locals 2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v0

    mul-int/2addr v0, p1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    return v0
.end method

.method public final getDataLastPoint(I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iPointsPosXSize:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final getGraphWidth()I
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getWidth()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getMinPoint()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getMoveable()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->moveable:Z

    return v0
.end method

.method public final incrementTurnDescInfo()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateDescInfo()V

    return-void
.end method

.method protected loadData(I)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->graphType:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_INCOME:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v4

    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats2:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;->income:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats2:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;->income:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->graphType:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_BALANCE:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    if-ne v1, v2, :cond_1

    move v1, v4

    :goto_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats2:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;->balance:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats2:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;->balance:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->graphType:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_PRESTIGE:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    if-ne v1, v2, :cond_2

    move v1, v4

    :goto_2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats3:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;->prestige:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats3:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;->prestige:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->graphType:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    if-ne v1, v2, :cond_3

    move v1, v4

    :goto_3
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats3:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;->population:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats3:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;->population:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_4
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v5

    invoke-direct {v2, v5, v0, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;-><init>(ILjava/util/List;I)V

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {p1, v3}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setDrawData(Z)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateMoveable()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildGraph()V

    :cond_5
    return-void
.end method

.method protected final removeData(I)V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateMoveable()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildGraph()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateButtonsInView()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sortCivsByLastPoint()V

    return-void
.end method

.method public final roundAverage()V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float v1, v0, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->bDecimal:B

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    float-to-int v3, v1

    int-to-float v3, v3

    sub-float v3, v1, v3

    sub-float/2addr v1, v3

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lessThanTen:Z

    rem-int/lit8 v1, v0, 0xa

    const/16 v2, 0xa

    if-nez v1, :cond_0

    div-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->bDecimal:B

    goto :goto_0

    :cond_0
    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lessThanTen:Z

    goto :goto_0

    :cond_1
    iput-byte v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->bDecimal:B

    :cond_2
    :goto_0
    return-void
.end method

.method public setCheckboxState(Z)V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildGraph()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateMoveable()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateButtonsInView()V

    return-void
.end method

.method public setCurrent(I)V
    .locals 4

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsHeight()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    neg-int v0, v0

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsHeight()I

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    neg-int p1, p1

    :cond_1
    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateButtonsInView()V

    :cond_2
    return-void
.end method

.method protected final setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/graph/GraphData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildGraph()V

    return-void
.end method

.method public final setHoveredID(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iHoveredID:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iHoveredID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildElementHover()V

    :cond_0
    return-void
.end method

.method public setMin(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setDrawData(Z)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->loadData(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final setScrollPosY(I)V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    if-gt v1, p1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AoC"

    invoke-interface {p1, v1, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setVisible(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateSlider(I)V

    :cond_0
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lTime:J

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateMoveTurnTime()V

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lTime:J

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    :goto_0
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setVisible(Z)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setHoveredID(I)V

    return-void
.end method

.method public final sortCivsByLastPoint()V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateButtonsInView()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v2

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    if-gt v2, v4, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setVisible(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    if-gt v2, v4, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setVisible(Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setVisible(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method protected final updateDescInfo()V
    .locals 10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v5

    if-lt v4, v5, :cond_1

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v4

    if-le v4, v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v0

    iput v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iBestDescDataID:I

    :cond_0
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v4

    if-gt v4, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v1

    iput v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWorstDescDataID:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    sget v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWorstDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v8, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWorstDescDataID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWorstDescDataTextWidth:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iBestDescDataID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget v8, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iBestDescDataID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iBestDescDataTextWidth:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iPointsPosXSize:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v0, v3, :cond_3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    :cond_3
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sTextX:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sTextX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWidthTextX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateMoveTurnTime()V

    return-void
.end method

.method public updateHover(IIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    if-gt v1, p1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    if-lt v1, p1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    if-gt v1, p2, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    if-lt v1, p2, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setHoveredID(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setHoveredID(I)V

    return-void
.end method

.method public final updateMoveTurnTime()V
    .locals 2

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lAuto_Move_Turn_Time:J

    return-void
.end method

.method protected final updateMoveable()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsHeight()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->moveable:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->moveable:Z

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    :goto_0
    return-void
.end method

.method public updateSlider(I)V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateMoveTurnTime()V

    return-void
.end method
