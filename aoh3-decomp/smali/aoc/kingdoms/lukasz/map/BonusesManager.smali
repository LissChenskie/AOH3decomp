.class public Laoc/kingdoms/lukasz/map/BonusesManager;
.super Ljava/lang/Object;
.source "BonusesManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initAndBuildProvinceBonuses()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    new-instance v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;-><init>()V

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    :goto_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v2, v4, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildings(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v4

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildings(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v5

    invoke-static {v1, v4, v5, v3}, Laoc/kingdoms/lukasz/map/BonusesManager;->updateBuildingBonuses(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-ltz v1, :cond_3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(ZZ)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public static updateBuildingBonuses(IIII)V
    .locals 5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyLegacy:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyLegacy:F

    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    aget p0, p0, p2

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_1

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    :cond_1
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    if-eqz p0, :cond_2

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->DefenseBonus:I

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    aget v3, v3, p2

    mul-int/2addr v3, p3

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->DefenseBonus:I

    :cond_2
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    if-eqz p0, :cond_3

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortLevel:I

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    aget v3, v3, p2

    mul-int/2addr v3, p3

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortLevel:I

    :cond_3
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    if-eqz p0, :cond_4

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortDefense:I

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    aget v3, v3, p2

    mul-int/2addr v3, p3

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortDefense:I

    :cond_4
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    if-eqz p0, :cond_5

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MaximumManpower:I

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    aget v3, v3, p2

    mul-int/2addr v3, p3

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MaximumManpower:I

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    :cond_5
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    if-eqz p0, :cond_6

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalManpower:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalManpower:I

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    :cond_6
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    if-eqz p0, :cond_7

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->RecruitArmyCostInProvince:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->RecruitArmyCostInProvince:F

    :cond_7
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    if-eqz p0, :cond_8

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->haveResearchBuilding()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_8
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    if-eqz p0, :cond_9

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->InvestInEconomyCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->InvestInEconomyCost:F

    :cond_9
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTimeBonus:[I

    if-eqz p0, :cond_a

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ConstructionTimeBonus:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTimeBonus:[I

    aget v3, v3, p2

    mul-int/2addr v3, p3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ConstructionTimeBonus:F

    :cond_a
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    if-eqz p0, :cond_b

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ConstructionCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    aget v3, v3, p2

    mul-int/2addr v3, p3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ConstructionCost:F

    :cond_b
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    if-eqz p0, :cond_c

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseGrowthRateCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseGrowthRateCost:F

    :cond_c
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    if-eqz p0, :cond_d

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseManpowerCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseManpowerCost:F

    :cond_d
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    if-eqz p0, :cond_e

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseTaxEfficiencyCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseTaxEfficiencyCost:F

    :cond_e
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    if-eqz p0, :cond_f

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->DevelopInfrastructureCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->DevelopInfrastructureCost:F

    :cond_f
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    if-eqz p0, :cond_10

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ProvinceMaintenance:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ProvinceMaintenance:F

    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    aget p0, p0, p2

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_10

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_10
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    if-eqz p0, :cond_11

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MaintenanceCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MaintenanceCost:F

    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    aget p0, p0, p2

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_11

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_11
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    if-eqz p0, :cond_12

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    aget p0, p0, p2

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_12

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_12
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaxInfrastructure:[I

    if-eqz p0, :cond_13

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MaxInfrastructure:I

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaxInfrastructure:[I

    aget v3, v3, p2

    mul-int/2addr v3, p3

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MaxInfrastructure:I

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    :cond_13
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->BuildingSlots:[I

    if-eqz p0, :cond_14

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->BuildingSlots:I

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->BuildingSlots:[I

    aget v3, v3, p2

    mul-int/2addr v3, p3

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->BuildingSlots:I

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    :cond_14
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    if-eqz p0, :cond_15

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalTaxEfficiency:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalTaxEfficiency:F

    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    aget p0, p0, p2

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_15

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_15
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ArmyMovementSpeed:[F

    if-eqz p0, :cond_16

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ArmyMovementSpeed:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ArmyMovementSpeed:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ArmyMovementSpeed:F

    :cond_16
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DiseaseDeathRate:[F

    if-eqz p0, :cond_17

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->DiseaseDeathRate:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DiseaseDeathRate:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->DiseaseDeathRate:F

    :cond_17
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CasualtiesNuclearAttacks:[F

    if-eqz p0, :cond_18

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->CasualtiesNuclearAttacks:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CasualtiesNuclearAttacks:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->CasualtiesNuclearAttacks:F

    :cond_18
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    if-eqz p0, :cond_19

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->Economy:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->Economy:F

    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    aget p0, p0, p2

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_19

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_19
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    if-eqz p0, :cond_1a

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ResearchPoints:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ResearchPoints:F

    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    aget p0, p0, p2

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_1a

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_1a
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    if-eqz p0, :cond_1b

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ProductionEfficiency:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ProductionEfficiency:F

    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    aget p0, p0, p2

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_1b

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_1b
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    if-eqz p0, :cond_1c

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncomeProduction:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    aget v3, v3, p2

    int-to-float v4, p3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncomeProduction:F

    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    aget p0, p0, p2

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_1c

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_1c
    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    if-eqz p0, :cond_1d

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    aget v3, v3, p2

    int-to-float p3, p3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    sget-object p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    aget p0, p0, p2

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_1d

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_1d
    return-void
.end method
