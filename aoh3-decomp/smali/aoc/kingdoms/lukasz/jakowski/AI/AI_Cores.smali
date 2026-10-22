.class public Laoc/kingdoms/lukasz/jakowski/AI/AI_Cores;
.super Ljava/lang/Object;
.source "AI_Cores.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildProvince_AICoresScore_Default(II)V
    .locals 3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    const v1, -0x368bdc10    # -999999.0f

    if-eqz v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    goto :goto_0

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->removeProvince(I)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesCores:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;->BUILD_SCORE_MIN:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesCores:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;->SCORE_PER_GROWTH_RATE:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesCores:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;->SCORE_PER_ECONOMY:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesCores:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;->SCORE_DISTANCE_FROM_CAPITAL:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiDistanceToCapital:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    :goto_0
    return-void
.end method

.method public static final createCore(I)V
    .locals 5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    if-lez v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    if-ge v1, v2, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Cores;->buildProvince_AICoresScore_Default(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->CORE_CREATION_COST_DEFAULT:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    if-lez v1, :cond_4

    const/4 v1, 0x1

    move v2, v0

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    if-ge v1, v3, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addCoreCreation()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->checkProvince(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method
