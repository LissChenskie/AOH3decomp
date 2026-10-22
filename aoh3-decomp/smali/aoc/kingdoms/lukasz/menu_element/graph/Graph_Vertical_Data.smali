.class public Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;
.super Ljava/lang/Object;
.source "Graph_Vertical_Data.java"


# static fields
.field private static final ANIMATION_TIME:I = 0x12c


# instance fields
.field private iCivID:I

.field private inView:Z

.field private lTime:J

.field private lValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->inView:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lTime:J

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    return-void
.end method


# virtual methods
.method protected final buildContinentData()V
    .locals 7

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_1
    :try_start_0
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    :goto_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    move v3, v4

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v6

    if-ge v5, v6, :cond_4

    move v3, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    return-void
.end method

.method protected final buildContinentData_CivsPopulation()V
    .locals 6

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    move v3, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected final buildContinentData_CivsProvinces()V
    .locals 6

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    move v3, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected final buildContinentData_ConstructedBuildings()V
    .locals 7

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_1
    :try_start_0
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    :goto_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    move v3, v4

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v6

    if-ge v5, v6, :cond_4

    move v3, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    return-void
.end method

.method protected final buildContinentData_Economy()V
    .locals 8

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    :try_start_0
    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v7

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    move v4, v2

    :goto_2
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v4, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    :goto_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6, v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v2

    move v4, v3

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v6

    if-ge v5, v6, :cond_5

    move v4, v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    return-void
.end method

.method protected final buildContinentData_GovernmentCivs()V
    .locals 6

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    move v3, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected final buildContinentData_Infrastructure()V
    .locals 7

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_1
    :try_start_0
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    :goto_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    move v3, v4

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v6

    if-ge v5, v6, :cond_4

    move v3, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    return-void
.end method

.method protected final buildContinentData_Population()V
    .locals 7

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_1
    :try_start_0
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    :goto_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    move v3, v4

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v6

    if-ge v5, v6, :cond_4

    move v3, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    return-void
.end method

.method protected final buildContinentData_Prestige()V
    .locals 6

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    move v3, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected final buildContinentData_RegimentsLimit()V
    .locals 6

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    move v3, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected final buildContinentData_ReligionCivs()V
    .locals 6

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    :goto_0
    :try_start_0
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Religion;->iReligionID:I

    if-ne v3, v4, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    move v3, v1

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_4

    move v3, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    return-void
.end method

.method protected final buildContinentData_ReligionCivs_Right()V
    .locals 6

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    :goto_0
    :try_start_0
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    if-ne v3, v4, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    move v3, v1

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_4

    move v3, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    return-void
.end method

.method protected final buildContinentData_ResourceProduction()V
    .locals 6

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->RESOURCE_ID:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods_ResourceCiv(II)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    move v3, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected final buildContinentData_UnlockedTechnologies()V
    .locals 6

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    move v3, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected final buildHeights(II)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    int-to-float v3, p1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->setHeight(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    iget-wide v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lTime:J

    :cond_0
    iget-wide v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lTime:J

    const-wide/16 v5, 0x12c

    add-long/2addr v3, v5

    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-lez v3, :cond_5

    move v3, v4

    move v5, v3

    :goto_0
    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-float v3, v5

    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lTime:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    const/high16 v6, 0x43960000    # 300.0f

    div-float/2addr v5, v6

    mul-float/2addr v3, v5

    float-to-int v3, v3

    move v14, v3

    move v13, v4

    :goto_1
    iget-object v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    iget-object v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-lez v5, :cond_4

    :try_start_0
    iget-object v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    add-int v8, p3, p5

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v6

    if-lt v14, v6, :cond_2

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v6

    move v11, v6

    goto :goto_2

    :cond_2
    move v11, v14

    :goto_2
    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result v6

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p4

    move v10, v13

    invoke-virtual/range {v5 .. v12}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    iget-object v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    add-int v8, p3, p5

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v6

    if-lt v14, v6, :cond_3

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v6

    move v11, v6

    goto :goto_3

    :cond_3
    move v11, v14

    :goto_3
    sget-object v12, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p4

    move v10, v13

    invoke-virtual/range {v5 .. v12}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V

    :goto_4
    iget-object v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v5

    add-int/2addr v13, v5

    iget-object v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v5

    sub-int/2addr v14, v5

    if-gtz v14, :cond_4

    goto/16 :goto_7

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    move v3, v4

    :goto_5
    iget-object v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    iget-object v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    if-lez v5, :cond_6

    :try_start_1
    iget-object v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    add-int v8, p3, p5

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result v6

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    iget-object v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    add-int v8, p3, p5

    sget-object v11, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    :goto_6
    iget-object v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    :goto_7
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :try_start_2
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    add-int v1, p3, p5

    sub-int/2addr v1, v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    sub-int v7, v1, v5

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    add-int v1, p3, p5

    sub-int/2addr v1, v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    sub-int v7, v1, v5

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_8
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flag_rect:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    add-int v1, p3, p5

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    sub-int v7, v1, v3

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method protected final drawDataTextValue(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 p4, p4, 0x2

    sub-int v3, p2, p4

    add-int/2addr p3, p5

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, p3, p2

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const/high16 p2, 0x3f800000    # 1.0f

    const p3, 0x3f59999a    # 0.85f

    invoke-direct {v5, p2, p2, p2, p3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/high16 v6, 0x42b40000    # 90.0f

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method protected final drawDataTextValue_Short(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 7

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 p4, p4, 0x2

    sub-int v3, p2, p4

    add-int/2addr p3, p5

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, p3, p2

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const p2, 0x3ee66666    # 0.45f

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {v5, p3, p3, p3, p2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/high16 v6, 0x42b40000    # 90.0f

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final drawDataTextValue_Splitted(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 p4, p4, 0x2

    sub-int v3, p2, p4

    add-int/2addr p3, p5

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, p3, p2

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const/high16 p2, 0x3f800000    # 1.0f

    const p3, 0x3ee66666    # 0.45f

    invoke-direct {v5, p2, p2, p2, p3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/high16 v6, 0x42b40000    # 90.0f

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method public final getCivID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->iCivID:I

    return v0
.end method

.method protected final getInView()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->inView:Z

    return v0
.end method

.method protected final getValue()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final getValue(I)I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getValue()I

    move-result p1

    return p1
.end method

.method protected final getValueDataTypeID(I)I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result p1

    return p1
.end method

.method protected final getValuesSize()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final resetAnimation()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->lTime:J

    return-void
.end method

.method protected final setInView(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->inView:Z

    return-void
.end method
