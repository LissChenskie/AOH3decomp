.class public Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Graph_Vertical.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;
    }
.end annotation


# static fields
.field public static graphCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

.field public allowStatisticsMode:Z

.field private bDecimal:B

.field public drawShort:Z

.field private drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

.field private fAvaragePoint:F

.field private fScrollNewMenuPosY:F

.field private iAvaragePosY:I

.field private iButtonsPosX:I

.field private iButtonsPosY:I

.field private iDataWidth:I

.field private iHoveredID:I

.field private iMaxPoint:I

.field private iMinPoint:I

.field private iScrollPosX:I

.field private iScrollPosX2:I

.field private iValuesSize:I

.field private iValuesTotal:I

.field private iWidthTextY:I

.field private lValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;",
            ">;"
        }
    .end annotation
.end field

.field private lessThanTen:Z

.field private moveable:Z

.field private sTextX:Ljava/lang/String;

.field private sTextY:Ljava/lang/String;

.field private sTotal:Ljava/lang/String;

.field private scrollModeY:Z

.field public splitBy100:Z

.field private statisticsMode:Z

.field private verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesTotal:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->splitBy100:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    iput-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->bDecimal:B

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lessThanTen:Z

    const-string v1, ""

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->sTotal:Ljava/lang/String;

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    const/4 v1, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX2:I

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->allowStatisticsMode:Z

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Total"

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->sTotal:Ljava/lang/String;

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->NUM_OF_PROVINCES_BY_CONTINENT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne p1, v2, :cond_2

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result p1

    if-ge v1, p1, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$1;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$1;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_13

    :cond_2
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_PROVINCES:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne p1, v2, :cond_5

    sget-object p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_1
    if-ltz p1, :cond_4

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_3

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_3

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$2;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$2;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_13

    :cond_5
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne p1, v2, :cond_8

    sget-object p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_2
    if-ltz p1, :cond_7

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_6

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_6

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$3;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$3;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_13

    :cond_8
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne p1, v2, :cond_b

    move p1, v1

    :goto_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge p1, v2, :cond_a

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v3, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_a
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$4;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$4;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_13

    :cond_b
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->GOVERNMENTS_CIVS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne p1, v2, :cond_e

    move p1, v1

    :goto_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge p1, v2, :cond_d

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_c

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->iGovID:I

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v3, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_d
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$5;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$5;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_13

    :cond_e
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->GOVERNMENTS_CIVS_RIGHT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne p1, v2, :cond_11

    move p1, v1

    :goto_5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge p1, v2, :cond_10

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_f

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iGovID:I

    if-ne v2, v3, :cond_f

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v3, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_10
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$6;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$6;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_13

    :cond_11
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RELIGION_CIVS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne p1, v2, :cond_15

    move p1, v1

    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge p1, v2, :cond_14

    move v2, v0

    :goto_7
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_13

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Religion;->iReligionID:I

    if-ne v3, v4, :cond_12

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v3, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    :goto_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_14
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$7;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$7;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_13

    :cond_15
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RELIGION_CIVS_RIGHT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne p1, v2, :cond_19

    move p1, v1

    :goto_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge p1, v2, :cond_18

    move v2, v0

    :goto_a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_17

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    if-ne v3, v4, :cond_16

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v3, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_17
    :goto_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_18
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$8;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$8;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_13

    :cond_19
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_INFRASTRUCTURE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne p1, v2, :cond_1c

    move p1, v1

    :goto_c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge p1, v2, :cond_1b

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_1a

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v3, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_1b
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$9;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$9;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_13

    :cond_1c
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_CONSTRUCTED_BUILDINGS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne p1, v2, :cond_1f

    move p1, v1

    :goto_d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge p1, v2, :cond_1e

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_1d

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v3, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1e
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$10;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$10;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_13

    :cond_1f
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_ECONOMY:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne p1, v2, :cond_22

    move p1, v1

    :goto_e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge p1, v2, :cond_21

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_20

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v3, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    :cond_21
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$11;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$11;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_13

    :cond_22
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_UNLOCKED_TECHS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne p1, v2, :cond_25

    move p1, v1

    :goto_f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge p1, v2, :cond_24

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_23

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v3, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_24
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_13

    :cond_25
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_PRESTIGE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne p1, v2, :cond_28

    move p1, v1

    :goto_10
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge p1, v2, :cond_27

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_26

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v3, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_27
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$13;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$13;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto :goto_13

    :cond_28
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RESOURCE_PRODUCTION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne p1, v2, :cond_2b

    move p1, v1

    :goto_11
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge p1, v2, :cond_2a

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_29

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v3, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_2a
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$14;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$14;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto :goto_13

    :cond_2b
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_REGIMENTS_LIMIT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne p1, v2, :cond_2e

    move p1, v1

    :goto_12
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge p1, v2, :cond_2d

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_2c

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v3, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :cond_2d
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$15;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$15;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    :cond_2e
    :goto_13
    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setPosX(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setPosY(I)V

    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setWidth(I)V

    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setHeight(I)V

    invoke-virtual {p0, p8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setVisible(Z)V

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->sTextX:Ljava/lang/String;

    iput-object p3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->sTextY:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const p2, 0x3f333333    # 0.7f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iWidthTextY:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->buildData()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->buildValuesHeights()V

    sget-object p1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->GRAPH_VERTICAL:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)I
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;
    .locals 0

    iget-object p0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    return-object p0
.end method

.method static synthetic access$300(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsValue(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$400(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)I
    .locals 0

    iget p0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesTotal:I

    return p0
.end method

.method static synthetic access$500(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->sTotal:Ljava/lang/String;

    return-object p0
.end method

.method private final drawStatisticsBegan(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v14, 0x3f333333    # 0.7f

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v2, v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->sTextX:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    move v8, v0

    :goto_0
    iget-object v0, v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getTextSize()I

    move-result v0

    if-ge v6, v0, :cond_0

    iget-object v0, v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v0, v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    add-int/2addr v8, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;->getTotal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    sub-int/2addr v0, v8

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    sub-int v5, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int v0, v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v14

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    sub-int v1, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v14

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    neg-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v14

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v15, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    add-int v3, v0, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v8

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZI)V

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v0, -0x1

    :goto_1
    iget-object v1, v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getTextSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_vertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v14

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int v10, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v14

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v11, v1, p3

    const/4 v12, 0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v14

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int v13, v1, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v9, p1

    move v3, v14

    move v14, v1

    move-object v1, v15

    move v15, v2

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    move-object v15, v1

    move v14, v3

    goto :goto_1

    :cond_1
    move v3, v14

    move-object v1, v15

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v2

    iget-object v4, v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getTextSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    add-int v10, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int v11, v0, p3

    const/4 v12, 0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int v13, v0, v2

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method private final drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V
    .locals 11

    move-object v8, p1

    move v9, p3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v10, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    move-object v1, p1

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v10

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move v2, p3

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    float-to-int v1, v1

    add-int/2addr v1, p4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v3, v1, v2

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->line_32_vertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int/lit8 v1, v9, -0x1

    add-int v2, v1, p5

    const/4 v4, 0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    float-to-int v1, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v5, v1, v3

    move-object v1, p1

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, p4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v1, p5, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v10

    float-to-int v2, v2

    neg-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {p1, p3, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v9

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, p4

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, p2

    invoke-static {p1, p2, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method private final drawStatisticsEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZI)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v0, v8

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    div-float v9, v0, v1

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v11, v0, :cond_3

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getInView()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    rem-int/lit8 v0, v11, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int v0, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, v11, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0, v7, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsRowBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v0, v0, -0x1

    if-ne v11, v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int v0, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, v11, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0, v7, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsRowHoverBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    :cond_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int v0, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v12, v11, 0x1

    mul-int/2addr v2, v12

    add-int/2addr v1, v2

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0, v7, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsRowLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    invoke-interface {v0, v11}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;->getStatsLPCivFlagID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_COLOR_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    mul-int/2addr v3, v12

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float/2addr v1, v9

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v9

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v5, v13

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    invoke-interface {v0, v11}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;->getStatsLP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float/2addr v1, v9

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_COLOR_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    mul-int/2addr v1, v12

    add-int/2addr v0, v1

    add-int v4, v0, p3

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float/2addr v1, v9

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_COLOR_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    sub-int v5, v0, v1

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsValue2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    move v2, v11

    move/from16 v3, p6

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method private final drawStatisticsRowBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 9

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d4ccccd    # 0.05f

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v7, p4, -0x1

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float p4, p4

    mul-float/2addr p4, v2

    float-to-int p4, p4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v8, p4, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method private final drawStatisticsRowHoverBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/lit8 v5, p4, -0x1

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float p4, p4

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v6, p4, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method private final drawStatisticsRowLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr p3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v4, p3, v0

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method private final drawStatisticsValue(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p4, v0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ee66666    # 0.45f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p2, p3, p4, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method private final drawStatisticsValue2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, p4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr p5, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-static {p1, p3, v0, p5, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_COLOR_WIDTH:I

    add-int/2addr p3, p5

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p4, p5

    sget-object p5, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method private final drawStatisticsValueWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V
    .locals 8

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, p4, p3

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, p5, p3

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float p3, p3

    mul-float/2addr p3, v0

    float-to-double v5, p3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float p3, p3

    mul-float/2addr p3, v0

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p3

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float p3, p3

    mul-float/2addr p3, v0

    float-to-int p3, p3

    add-int/2addr p4, p3

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p5, p3

    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ee66666    # 0.45f

    invoke-direct {p3, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p2, p4, p5, p3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method private final getButtonsPosX(I)I
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getButtonsPosY(I)I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/2addr v0, p1

    return v0
.end method

.method private final getButtonsWidth()I
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    mul-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private final getStatisticsWidth()I
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getTextSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    div-int/2addr v0, v1

    return v0
.end method

.method private final roundAverage()V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

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

    iput-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->bDecimal:B

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    float-to-int v3, v1

    int-to-float v3, v3

    sub-float v3, v1, v3

    sub-float/2addr v1, v3

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lessThanTen:Z

    rem-int/lit8 v1, v0, 0xa

    const/16 v2, 0xa

    if-nez v1, :cond_0

    div-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->bDecimal:B

    goto :goto_0

    :cond_0
    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lessThanTen:Z

    goto :goto_0

    :cond_1
    iput-byte v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->bDecimal:B

    :cond_2
    :goto_0
    return-void
.end method

.method private final setHoveredID(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->buildElementHover()V

    :cond_0
    return-void
.end method

.method private final updateMoveable()V
    .locals 6

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    const/4 v1, 0x1

    const v2, 0x3f333333    # 0.7f

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosY(I)I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v5, v2

    float-to-int v2, v5

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_0

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    iput v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_2

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    iput v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    :goto_0
    return-void
.end method


# virtual methods
.method public final buildData()V
    .locals 12

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->NUM_OF_PROVINCES_BY_CONTINENT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x437f0000    # 255.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v2, v3, :cond_2

    move v2, v7

    :goto_0
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v8

    :goto_1
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v2, v3, :cond_1e

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iR:I

    int-to-float v9, v9

    div-float/2addr v9, v6

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iG:I

    int-to-float v10, v10

    div-float/2addr v10, v6

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iB:I

    int-to-float v11, v11

    div-float/2addr v11, v6

    invoke-direct {v3, v9, v10, v11, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_4

    move v2, v7

    :goto_2
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_Population()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v8

    :goto_3
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v2, v3, :cond_1e

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iR:I

    int-to-float v9, v9

    div-float/2addr v9, v6

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iG:I

    int-to-float v10, v10

    div-float/2addr v10, v6

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iB:I

    int-to-float v11, v11

    div-float/2addr v11, v6

    invoke-direct {v3, v9, v10, v11, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_PROVINCES:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_6

    move v2, v7

    :goto_4
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_CivsProvinces()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Provinces"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_6
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    const-string v9, "Population"

    if-ne v2, v3, :cond_8

    move v2, v7

    :goto_5
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_CivsPopulation()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_POPULATION:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_8
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->GOVERNMENTS_CIVS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_a

    move v2, v7

    :goto_6
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_9

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_GovernmentCivs()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->iGovID:I

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Color:[F

    aget v3, v3, v7

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->iGovID:I

    invoke-virtual {v6, v9}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Color:[F

    aget v6, v6, v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->iGovID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Color:[F

    aget v9, v9, v4

    invoke-direct {v2, v3, v6, v9, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_a
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->GOVERNMENTS_CIVS_RIGHT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_c

    move v2, v7

    :goto_7
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_b

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_GovernmentCivs()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iGovID:I

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Color:[F

    aget v3, v3, v7

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iGovID:I

    invoke-virtual {v6, v9}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Color:[F

    aget v6, v6, v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iGovID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Color:[F

    aget v9, v9, v4

    invoke-direct {v2, v3, v6, v9, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_c
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RELIGION_CIVS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_e

    move v2, v7

    :goto_8
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_d

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_ReligionCivs()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Religion;->iReligionID:I

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    aget v3, v3, v7

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Religion;->iReligionID:I

    invoke-virtual {v6, v9}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    aget v6, v6, v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Religion;->iReligionID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    aget v9, v9, v4

    invoke-direct {v2, v3, v6, v9, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_e
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RELIGION_CIVS_RIGHT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_10

    move v2, v7

    :goto_9
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_f

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_ReligionCivs_Right()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_f
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    aget v3, v3, v7

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    invoke-virtual {v6, v9}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    aget v6, v6, v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    aget v9, v9, v4

    invoke-direct {v2, v3, v6, v9, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_10
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_CONSTRUCTED_BUILDINGS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_12

    move v2, v7

    :goto_a
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_11

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_ConstructedBuildings()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_11
    move v2, v8

    :goto_b
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v2, v3, :cond_1e

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iR:I

    int-to-float v9, v9

    div-float/2addr v9, v6

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iG:I

    int-to-float v10, v10

    div-float/2addr v10, v6

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iB:I

    int-to-float v11, v11

    div-float/2addr v11, v6

    invoke-direct {v3, v9, v10, v11, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_12
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_INFRASTRUCTURE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_14

    move v2, v7

    :goto_c
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_13

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_Infrastructure()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_13
    move v2, v8

    :goto_d
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v2, v3, :cond_1e

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iR:I

    int-to-float v9, v9

    div-float/2addr v9, v6

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iG:I

    int-to-float v10, v10

    div-float/2addr v10, v6

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iB:I

    int-to-float v11, v11

    div-float/2addr v11, v6

    invoke-direct {v3, v9, v10, v11, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_14
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_ECONOMY:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_16

    move v2, v7

    :goto_e
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_15

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_Economy()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_15
    move v2, v8

    :goto_f
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v2, v3, :cond_1e

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iR:I

    int-to-float v9, v9

    div-float/2addr v9, v6

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iG:I

    int-to-float v10, v10

    div-float/2addr v10, v6

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iB:I

    int-to-float v11, v11

    div-float/2addr v11, v6

    invoke-direct {v3, v9, v10, v11, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_16
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_UNLOCKED_TECHS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_18

    move v2, v7

    :goto_10
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_17

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_UnlockedTechnologies()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_17
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "UnlockedTechnologies"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_18
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_PRESTIGE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_1a

    move v2, v7

    :goto_11
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_19

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_Prestige()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_19
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Prestige"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1a
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RESOURCE_PRODUCTION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_1c

    move v2, v7

    :goto_12
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_1b

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_ResourceProduction()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Production"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1c
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_REGIMENTS_LIMIT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_1e

    move v2, v7

    :goto_13
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_1d

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_RegimentsLimit()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1d
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v3, 0x0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/nvwi/cIUGJCqyPXfp;->qCMgffWpK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_14
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x3f333333    # 0.7f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v9, v4

    add-int/2addr v5, v9

    sub-int/2addr v3, v5

    invoke-direct {v2, v0, v1, v3, v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v7

    :goto_15
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v1, v2, :cond_1f

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_1f
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_22

    move v2, v7

    move v1, v8

    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v5

    if-le v3, v5, :cond_20

    move v2, v1

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_21
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_16

    :cond_22
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMaxPoint:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMinPoint:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_18

    :catch_0
    iput v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMinPoint:I

    :goto_18
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    const-wide/16 v0, 0x0

    move v2, v7

    :goto_19
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v7, v3, :cond_26

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMaxPoint:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v5

    if-ge v3, v5, :cond_23

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMaxPoint:I

    :cond_23
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMinPoint:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v5

    if-le v3, v5, :cond_24

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMinPoint:I

    :cond_24
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v3

    if-lez v3, :cond_25

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v3

    int-to-long v8, v3

    add-long/2addr v0, v8

    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_26
    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v1, v4

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v2, v4

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMaxPoint:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMinPoint:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iAvaragePosY:I

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->roundAverage()V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateMoveable()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateInView()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->countValuesTotal()V

    return-void
.end method

.method public buildElementHover()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    const/4 v2, 0x0

    if-ltz v1, :cond_f

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    if-nez v1, :cond_f

    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->NUM_OF_PROVINCES_BY_CONTINENT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    const-string v4, "Provinces"

    const-string v5, ": "

    const/4 v6, 0x0

    const-string v7, ""

    if-ne v1, v3, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v8, v9, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto/16 :goto_2

    :cond_0
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    const-string v8, "Population"

    if-ne v1, v3, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v9, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto/16 :goto_2

    :cond_1
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_PROVINCES:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v8, v9, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto/16 :goto_2

    :cond_2
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v9, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto/16 :goto_2

    :cond_3
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->GOVERNMENTS_CIVS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-eq v1, v3, :cond_e

    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->GOVERNMENTS_CIVS_RIGHT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RELIGION_CIVS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-eq v1, v3, :cond_d

    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RELIGION_CIVS_RIGHT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_CONSTRUCTED_BUILDINGS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v8, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "ConstructedBuildings"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getConstructedBuildings()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto/16 :goto_2

    :cond_6
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_INFRASTRUCTURE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v8, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Infrastructure"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInfrastructure()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto/16 :goto_2

    :cond_7
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_UNLOCKED_TECHS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v8, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "UnlockedTechnologies"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto/16 :goto_2

    :cond_8
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_PRESTIGE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v8, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Prestige"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRanking_IMG_STAR_CIVID(I)I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto/16 :goto_2

    :cond_9
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RESOURCE_PRODUCTION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v8, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Production"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->RESOURCE_ID:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods_ResourceCiv(II)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto/16 :goto_2

    :cond_a
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_REGIMENTS_LIMIT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v8, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "RegimentsLimit"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto/16 :goto_2

    :cond_b
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_ECONOMY:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v8, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Economy"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto/16 :goto_2

    :cond_c
    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto/16 :goto_2

    :cond_d
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v9, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto/16 :goto_2

    :cond_e
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v9, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto :goto_2

    :cond_f
    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    :goto_2
    return-void
.end method

.method public final buildValuesHeights()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMaxPoint:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildHeights(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final countValuesTotal()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesTotal:I

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesTotal:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesTotal:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    iget-boolean v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    const/4 v14, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    iget-boolean v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    const v1, 0x3f7851ec    # 0.97f

    if-eqz v0, :cond_1

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v13

    if-lez v0, :cond_0

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setCurrent(I)V

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    mul-float/2addr v0, v1

    iput v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    goto :goto_0

    :cond_0
    iput-boolean v14, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    goto :goto_0

    :cond_1
    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v13

    if-lez v0, :cond_2

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setCurrent(I)V

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    mul-float/2addr v0, v1

    iput v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    goto :goto_0

    :cond_2
    iput-boolean v14, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    :cond_3
    :goto_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {v0, v13, v13, v13, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->graphBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    const v12, 0x3f333333    # 0.7f

    mul-float/2addr v2, v12

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v12

    float-to-int v5, v5

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v12

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v12

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v12

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v8, p1

    move v5, v12

    move v12, v0

    move v3, v13

    move v13, v1

    move v1, v14

    move v14, v2

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v2, v7, v8, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v7, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v11, v0, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v12, v0, v2

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d851eb8    # 0.065f

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->noise:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v4, v4, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v8, v8

    sub-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    sub-int/2addr v8, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    move v14, v1

    move-object/from16 v1, p1

    move v13, v3

    move v3, v4

    move v4, v7

    move v12, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->sTextY:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v2, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iWidthTextY:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int v3, v0, p3

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v5, 0x42b40000    # 90.0f

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v2, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v0, v15, v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-boolean v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    if-eqz v0, :cond_4

    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsBegan(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    move/from16 v16, v12

    goto/16 :goto_8

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, p3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v15, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->line_33:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v0, v15, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->line_33:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v12

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iAvaragePosY:I

    add-int/2addr v0, v1

    add-int v10, v0, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v12

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    neg-int v2, v2

    move-object/from16 v8, p1

    move/from16 v16, v12

    move v12, v0

    move v5, v13

    move v13, v1

    move v4, v14

    move v14, v2

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int v0, v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v1, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-static {v15, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    if-ltz v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v11, v0, 0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int v12, v0, v1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v7, 0x3ccccccd    # 0.025f

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v11, v0, 0x4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int v12, v0, v1

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v11, v0, 0x4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int v12, v0, v1

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_5
    iget-boolean v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    if-eqz v0, :cond_8

    move v3, v4

    :goto_1
    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v3, v0, :cond_7

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getInView()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v2, v3, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    iget v11, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v1, v8

    sub-int v12, v0, v1

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getColors()Ljava/util/List;

    move-result-object v13

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getSorted()Ljava/util/List;

    move-result-object v14

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;Ljava/util/List;)V

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v7

    add-int/2addr v1, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v2

    sub-int/2addr v1, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v3

    sub-int/2addr v1, v7

    iget v7, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    mul-int/2addr v7, v2

    sub-int/2addr v1, v7

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v7, v1, p3

    iget v8, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v9, v9

    mul-float v9, v9, v16

    float-to-int v9, v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    sub-int v9, v1, v9

    move-object/from16 v1, p1

    move v10, v3

    move v3, v7

    move v14, v4

    move v4, v8

    move v13, v5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->drawDataTextValue_Short(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_2

    :cond_6
    move v10, v3

    move v14, v4

    move v13, v5

    :goto_2
    add-int/lit8 v3, v10, 0x1

    move v5, v13

    move v4, v14

    goto/16 :goto_1

    :cond_7
    move v10, v4

    move v7, v5

    goto/16 :goto_7

    :cond_8
    move v14, v4

    move v13, v5

    iget-boolean v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->splitBy100:Z

    if-eqz v0, :cond_a

    move v5, v14

    :goto_3
    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v5, v0, :cond_c

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getInView()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v2, v5, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v1, v5

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    iget v11, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sub-int v12, v0, v1

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getColors()Ljava/util/List;

    move-result-object v0

    iget-object v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getSorted()Ljava/util/List;

    move-result-object v1

    move-object/from16 v8, p1

    move v4, v13

    move-object v13, v0

    move v3, v14

    move-object v14, v1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;Ljava/util/List;)V

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v7

    add-int/2addr v1, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v2

    sub-int/2addr v1, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v5

    sub-int/2addr v1, v7

    iget v7, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    mul-int/2addr v7, v2

    sub-int/2addr v1, v7

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v7, v1, p3

    iget v8, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v9, v9

    mul-float v9, v9, v16

    float-to-int v9, v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    sub-int v9, v1, v9

    move-object/from16 v1, p1

    move v14, v3

    move v3, v7

    move v13, v4

    move v4, v8

    move v7, v5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->drawDataTextValue_Splitted(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_4

    :cond_9
    move v7, v5

    :goto_4
    add-int/lit8 v5, v7, 0x1

    goto/16 :goto_3

    :cond_a
    move v5, v14

    :goto_5
    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v5, v0, :cond_c

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getInView()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v2, v5, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v1, v5

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    iget v11, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sub-int v12, v0, v1

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getColors()Ljava/util/List;

    move-result-object v0

    iget-object v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getSorted()Ljava/util/List;

    move-result-object v1

    move-object/from16 v8, p1

    move v4, v13

    move-object v13, v0

    move v3, v14

    move-object v14, v1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;Ljava/util/List;)V

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v7

    add-int/2addr v1, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v2

    sub-int/2addr v1, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v5

    sub-int/2addr v1, v7

    iget v7, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    mul-int/2addr v7, v2

    sub-int/2addr v1, v7

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v7, v1, p3

    iget v8, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v9, v9

    mul-float v9, v9, v16

    float-to-int v9, v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    sub-int v9, v1, v9

    move-object/from16 v1, p1

    move v10, v3

    move v3, v7

    move v7, v4

    move v4, v8

    move v14, v5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->drawDataTextValue(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_6

    :cond_b
    move v7, v13

    move v10, v14

    move v14, v5

    :goto_6
    add-int/lit8 v5, v14, 0x1

    move v13, v7

    move v14, v10

    goto/16 :goto_5

    :cond_c
    move v7, v13

    move v10, v14

    :goto_7
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMaxPoint:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v4, v3

    sget v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    add-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v15, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    :goto_8
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v16

    float-to-int v5, v5

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v16

    float-to-int v4, v4

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v16

    float-to-int v5, v5

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v16

    float-to-int v4, v4

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    add-int v2, v2, p3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-virtual {v0, v15, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    const/4 v4, 0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v5, v1, -0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    add-int v2, v2, p3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v15, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    const/4 v4, 0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v5, v1, -0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getCurrent()I
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    return v0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    return v0
.end method

.method public getInStatisticsMode()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    return v0
.end method

.method public getMoveable()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    return v0
.end method

.method public getScrollable()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    return v0
.end method

.method public scrollByWheel(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getCurrent()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setCurrent(I)V

    return-void
.end method

.method public final scrollTheMenu()V
    .locals 3

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX:I

    if-lez v0, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX2:I

    if-lez v1, :cond_0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->DENSITY:F

    mul-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX2:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    :cond_0
    return-void
.end method

.method public setCheckboxState(Z)V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->buildValuesHeights()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateInView()V

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->updateMoveable(I)V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateMoveable()V

    return-void
.end method

.method public setCurrent(I)V
    .locals 7

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    if-eqz v0, :cond_2

    if-lez p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosY(Z)V

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    move p1, v2

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    neg-int v0, v0

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    mul-int/2addr v0, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    if-ge p1, v0, :cond_1

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float p1, p1

    mul-float/2addr p1, v3

    float-to-int p1, p1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    neg-int p1, p1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    mul-int/2addr p1, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int/2addr p1, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosY(Z)V

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    :cond_1
    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    if-eq v0, p1, :cond_5

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateInView()V

    goto :goto_2

    :cond_2
    if-gez p1, :cond_3

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosX(Z)V

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    move p1, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    if-le p1, v0, :cond_4

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsWidth()I

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/2addr p1, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p1, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sub-int/2addr p1, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosX(Z)V

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    :cond_4
    :goto_1
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    if-eq v0, p1, :cond_5

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateInView()V

    :cond_5
    :goto_2
    return-void
.end method

.method public setInStatisticsMode(Z)V
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->allowStatisticsMode:Z

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    if-nez p1, :cond_0

    :goto_0
    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v0, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->resetAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateMoveable()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateInView()V

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setHoveredID(I)V

    :cond_1
    return-void
.end method

.method public final setScrollPosY(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX2:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setVisible(Z)V

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setHoveredID(I)V

    return-void
.end method

.method public stopScrolling()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX2:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    return-void
.end method

.method public updateHover(IIII)V
    .locals 4

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    add-int/2addr v0, p3

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int/2addr v0, p4

    if-lt p2, v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int/2addr p4, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    add-int/2addr p4, v0

    if-gt p2, p4, :cond_1

    :goto_0
    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v1, p2, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result p4

    add-int/2addr p2, p4

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v0, v1, 0x1

    mul-int/2addr p4, v0

    sub-int/2addr p2, p4

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr p4, v1

    sub-int/2addr p2, p4

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    mul-int/2addr p4, v0

    sub-int/2addr p2, p4

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr p2, p4

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result p4

    add-int/2addr p2, p4

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr p4, v0

    sub-int/2addr p2, p4

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr p4, v1

    sub-int/2addr p2, p4

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    mul-int v3, p4, v0

    sub-int/2addr p2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr p2, v3

    add-int/2addr p2, p4

    if-gt p1, p2, :cond_0

    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setHoveredID(I)V

    return-void

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setHoveredID(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    add-int/2addr v0, p3

    if-lt p1, v0, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    add-int/2addr p3, v0

    if-gt p1, p3, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result p1

    add-int/2addr p1, p4

    if-lt p2, p1, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result p1

    add-int/2addr p1, p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result p3

    add-int/2addr p1, p3

    if-gt p2, p1, :cond_4

    :goto_1
    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v1, p1, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result p1

    add-int/2addr p1, p4

    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr p1, p3

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float p3, p3

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr p3, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr p3, v3

    float-to-int p3, p3

    mul-int/2addr p3, v1

    add-int/2addr p1, p3

    if-lt p2, p1, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result p1

    add-int/2addr p1, p4

    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr p1, p3

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float p3, p3

    mul-float/2addr p3, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr p3, v3

    float-to-int p3, p3

    mul-int/2addr p3, v1

    add-int/2addr p1, p3

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float p3, p3

    mul-float/2addr p3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p3, v0

    float-to-int p3, p3

    add-int/2addr p1, p3

    if-gt p2, p1, :cond_3

    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setHoveredID(I)V

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setHoveredID(I)V

    :goto_2
    return-void
.end method

.method public final updateInView()V
    .locals 8

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x3f333333    # 0.7f

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v0, v4, :cond_5

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_0

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_0

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    if-ltz v4, :cond_1

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_1

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->setInView(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    move v0, v1

    :goto_2
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v0, v4, :cond_5

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_3

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_3

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_3

    :cond_3
    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    sub-int/2addr v4, v5

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_4

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    sub-int/2addr v4, v5

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_4

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_3

    :cond_4
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->setInView(Z)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
