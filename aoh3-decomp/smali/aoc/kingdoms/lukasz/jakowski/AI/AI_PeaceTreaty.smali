.class public Laoc/kingdoms/lukasz/jakowski/AI/AI_PeaceTreaty;
.super Ljava/lang/Object;
.source "AI_PeaceTreaty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildProvinceScore(III)V
    .locals 9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    const/4 v2, 0x0

    move v3, v1

    move v5, v3

    move v4, v2

    :goto_0
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v3, v6, :cond_4

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v6

    if-gez v6, :cond_3

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    if-eq v6, p0, :cond_0

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-ne v6, v8, :cond_1

    :cond_0
    add-float/2addr v4, v7

    :cond_1
    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    if-ne v6, p2, :cond_2

    iget v6, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    int-to-float v6, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_LOSER_SCORE:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    :cond_2
    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    if-ne v6, p0, :cond_3

    iget v6, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    int-to-float v6, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_SCORE:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    cmpl-float p2, v4, v2

    if-lez p2, :cond_5

    iget p2, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    int-to-float p2, p2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_PERC:F

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float/2addr v3, v5

    add-float/2addr p2, v3

    float-to-int p2, p2

    iput p2, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    :cond_5
    iget-boolean p2, v0, Laoc/kingdoms/lukasz/map/province/Province;->accessToMainSea:Z

    if-eqz p2, :cond_8

    iget p2, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    int-to-float p2, p2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_SEA:F

    add-float/2addr p2, v3

    float-to-int p2, p2

    iput p2, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    move p2, v1

    :goto_1
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge p2, v3, :cond_7

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_6

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-eq v3, v4, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    iget p2, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    int-to-float p2, p2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_SEA_BEGIN:F

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    :cond_8
    iget p2, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_DISTANCE:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result p0

    sub-float/2addr v7, p0

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float/2addr v1, p0

    float-to-int p0, v1

    add-int/2addr p2, p0

    iput p2, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    return-void
.end method

.method public static buildProvinceScore_Player(Ljava/util/List;II)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    move v4, v1

    :goto_0
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-ge v0, v5, :cond_3

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v5

    if-gez v5, :cond_2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p1, :cond_0

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-ne v5, v7, :cond_1

    :cond_0
    add-float/2addr v4, v6

    :cond_1
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_2

    int-to-float v2, v2

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_SCORE:F

    add-float/2addr v2, v5

    float-to-int v2, v2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    cmpl-float p0, v4, v1

    if-lez p0, :cond_4

    int-to-float p0, v2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_PERC:F

    int-to-float v2, v3

    div-float/2addr v2, v4

    mul-float/2addr v0, v2

    add-float/2addr p0, v0

    float-to-int v2, p0

    :cond_4
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    iget-boolean p0, p0, Laoc/kingdoms/lukasz/map/province/Province;->accessToMainSea:Z

    if-eqz p0, :cond_5

    int-to-float p0, v2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_SEA:F

    add-float/2addr p0, v0

    float-to-int v2, p0

    :cond_5
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget p0, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_DISTANCE:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p1

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result p1

    sub-float/2addr v6, p1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    add-int/2addr v2, p0

    return v2
.end method

.method public static peaceTreaty(Ljava/lang/String;II)V
    .locals 13

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/map/PeaceTreaty;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;-><init>(ILjava/lang/String;Z)V

    :try_start_0
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/war/War;

    iget-boolean v2, p0, Laoc/kingdoms/lukasz/map/war/War;->conquerVassal:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean p0, p0, Laoc/kingdoms/lukasz/map/war/War;->isCoalition:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move v2, v1

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move p0, v1

    :goto_1
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    move v6, v1

    :goto_2
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {p1, v7, p2}, Laoc/kingdoms/lukasz/jakowski/AI/AI_PeaceTreaty;->buildProvinceScore(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v8

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_PEACE_ORDER_CHANCE:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v9

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_PEACE_ORDER_CHANCE2:I

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v8

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_PEACE_ORDER_CHANCE:I

    if-ge v6, v7, :cond_2

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_PEACE_ORDER:[I

    goto :goto_3

    :cond_2
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_PEACE_ORDER2:[I

    :goto_3
    const/4 v7, 0x1

    if-eqz p0, :cond_3

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-object v6, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_COALITION:[I

    goto :goto_4

    :cond_3
    if-eqz v2, :cond_4

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-object v6, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_ANNEX_VASSAL_PEACE_ORDER:[I

    goto :goto_4

    :cond_4
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p2, p0, :cond_5

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-boolean p0, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_VASSALIZE_PLAYER:Z

    if-eqz p0, :cond_5

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object p0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-boolean p0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->wasVassalized:Z

    if-nez p0, :cond_5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result p0

    if-eq p0, p1, :cond_5

    iget p0, v0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandVassalization()F

    move-result v2

    cmpl-float p0, p0, v2

    if-ltz p0, :cond_5

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object p0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iput-boolean v7, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->wasVassalized:Z

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-object v6, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_VASSALIZE_PLAYER_PEACE_ORDER:[I

    :cond_5
    :goto_4
    move p0, v1

    :goto_5
    array-length v2, v6

    if-ge p0, v2, :cond_f

    aget v2, v6, p0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    iput-boolean v7, v0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReturnProvinces:Z

    goto/16 :goto_e

    :pswitch_1
    iget v2, v0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandHumiliate()F

    move-result v8

    cmpl-float v2, v2, v8

    if-ltz v2, :cond_e

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate()V

    goto/16 :goto_e

    :pswitch_2
    iget v2, v0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandWarReparations()F

    move-result v8

    cmpl-float v2, v2, v8

    if-ltz v2, :cond_e

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations()V

    goto/16 :goto_e

    :pswitch_3
    invoke-static {p2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getCivsPossibleToLiberate(I)Ljava/util/List;

    move-result-object v2

    move v8, v1

    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_e

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, p2, v9}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandLiberateCiv(II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :pswitch_4
    move v2, v1

    :goto_7
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_GOLD_MAX:I

    if-ge v2, v8, :cond_e

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold()Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_e

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :pswitch_5
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v8

    if-eq v2, v8, :cond_e

    iget v2, v0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandGovernmentChange()F

    move-result v8

    cmpl-float v2, v2, v8

    if-ltz v2, :cond_e

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange()V

    goto/16 :goto_e

    :pswitch_6
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v8

    if-eq v2, v8, :cond_e

    iget v2, v0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandReligionConversion()F

    move-result v8

    cmpl-float v2, v2, v8

    if-ltz v2, :cond_e

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion()V

    goto/16 :goto_e

    :pswitch_7
    iget-object v2, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-lez v2, :cond_e

    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v8, v1

    :goto_8
    iget-object v9, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v9, v9, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-ge v8, v9, :cond_7

    iget-object v9, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v9, v9, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_7
    :goto_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_a

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v8

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v9

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    move v10, v1

    :goto_a
    if-lez v9, :cond_9

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v12

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v11

    cmpl-float v11, v8, v11

    if-lez v11, :cond_8

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v8

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v10

    invoke-static {v8, v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v8

    move v10, v9

    :cond_8
    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    :cond_9
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandSubjectTransfer(I)V

    invoke-interface {v2, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_a
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_e

    :catch_2
    move-exception v2

    :try_start_4
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :pswitch_8
    iget v2, v0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandVassalization()F

    move-result v8

    cmpl-float v2, v2, v8

    if-ltz v2, :cond_e

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization()V

    goto/16 :goto_e

    :goto_b
    :pswitch_9
    iget v2, v0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    const/4 v8, 0x0

    cmpl-float v2, v2, v8

    if-lez v2, :cond_e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v7

    move v8, v1

    :goto_c
    if-ltz v2, :cond_c

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    if-ge v9, v10, :cond_b

    move v8, v2

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_c
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->addProvince(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iput p1, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    move v2, v1

    :goto_d
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v9

    if-ge v2, v9, :cond_d

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {p1, v9, p2}, Laoc/kingdoms/lukasz/jakowski/AI/AI_PeaceTreaty;->buildProvinceScore(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_d
    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_b

    :cond_e
    :goto_e
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_5

    :catch_3
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_f
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->enforceDemands(Z)Z

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p2, p0, :cond_10

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance p2, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageTruce;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v1, v2

    invoke-direct {p2, p1, v1, v0}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageTruce;-><init>(IILaoc/kingdoms/lukasz/map/PeaceTreaty;)V

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
