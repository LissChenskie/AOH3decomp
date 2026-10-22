.class public Laoc/kingdoms/lukasz/jakowski/AI/Advantages/AI_Advantages;
.super Ljava/lang/Object;
.source "AI_Advantages.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final takeAdvantage(I)Z
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    sget v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->iAdvantagesSize:I

    if-ge v2, v4, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RequiredTechID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AI:I

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x1

    if-gtz v3, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->unlockAdvantage(II)Z

    goto :goto_2

    :cond_3
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_5

    sget-object v7, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v7, v7, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AI:I

    add-int/2addr v7, v6

    if-ge v3, v7, :cond_4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->unlockAdvantage(II)Z

    return v2

    :cond_4
    sget-object v7, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v7, v7, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AI:I

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->unlockAdvantage(II)Z

    :goto_2
    return v2
.end method

.method public static final takeAdvantage_Player(I)I
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    sget v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->iAdvantagesSize:I

    if-ge v2, v4, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v5, v5, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RequiredTechID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AI:I

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, -0x1

    if-nez v2, :cond_2

    return v4

    :cond_2
    if-gtz v3, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->unlockAdvantage(II)Z

    return v4

    :cond_3
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_5

    sget-object v6, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v6, v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AI:I

    add-int/2addr v6, v5

    if-ge v2, v6, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->unlockAdvantage(II)Z

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_4
    sget-object v6, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v6, v6, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AI:I

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->unlockAdvantage(II)Z

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static final takeAdvantages(I)V
    .locals 2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Advantages/AI_Advantages;->takeAdvantage(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
