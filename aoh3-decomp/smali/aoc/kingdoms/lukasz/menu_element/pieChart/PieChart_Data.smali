.class public Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
.super Ljava/lang/Object;
.source "PieChart_Data.java"


# instance fields
.field private pieChartValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;",
            ">;"
        }
    .end annotation
.end field

.field private pieChartValuesSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValues:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValuesSize:I

    return-void
.end method


# virtual methods
.method public final addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValuesSize:I

    return-void
.end method

.method public getCivID(I)I
    .locals 0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result p1

    return p1
.end method

.method public final getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    return-object p1
.end method

.method public getPieChartValue_ColorB(I)F
    .locals 0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result p1

    return p1
.end method

.method public getPieChartValue_ColorG(I)F
    .locals 0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result p1

    return p1
.end method

.method public getPieChartValue_ColorR(I)F
    .locals 0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result p1

    return p1
.end method

.method public final getPieChartValuesSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValuesSize:I

    return v0
.end method

.method public final sortAndBuild_PieChartValues()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    float-to-double v4, v1

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x1

    move v4, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getValue()D

    move-result-wide v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getValue()D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    move v4, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValues:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v0

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    float-to-double v5, v1

    div-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->setPercentage(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
