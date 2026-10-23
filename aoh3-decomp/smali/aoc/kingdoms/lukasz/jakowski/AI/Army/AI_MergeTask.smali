.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;
.super Ljava/lang/Object;
.source "AI_MergeTask.java"


# instance fields
.field public iProvinceID:I

.field public keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->iProvinceID:I

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addKey(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public checkArmiesExists(I)V
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->iProvinceID:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isArmyMovingToProvince(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MergeTask;->keys:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
