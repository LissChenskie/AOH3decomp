.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;
.super Ljava/lang/Object;
.source "AI_CreateNewArmy_Task.java"


# instance fields
.field public cre:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;",
            ">;"
        }
    .end annotation
.end field

.field public key:Ljava/lang/String;

.field public rL:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->rL:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->t:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->rL:I

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->key:Ljava/lang/String;

    iput-object p2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    iput p3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->t:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    iget p2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->rL:I

    iget-object p3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget p3, p3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    add-int/2addr p2, p3

    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->rL:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public recruitArmy(I)Z
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_3

    :cond_2
    :goto_1
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    new-instance v6, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->u:I

    iget-object v9, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->a:I

    iget-object v10, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->key:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v10}, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;-><init>(IIILjava/lang/String;)V

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->recruitArmy(Laoc/kingdoms/lukasz/map/army/ArmyRecruit;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    sub-int/2addr v6, v4

    iput v6, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    iget v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->rL:I

    sub-int/2addr v5, v4

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->rL:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    if-gtz v5, :cond_2

    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;->cre:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_4

    move v1, v4

    :cond_4
    return v1
.end method
