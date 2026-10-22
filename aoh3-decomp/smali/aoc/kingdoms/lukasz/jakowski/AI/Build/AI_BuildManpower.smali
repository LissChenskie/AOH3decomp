.class public Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildManpower;
.super Ljava/lang/Object;
.source "AI_BuildManpower.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildBuilding(IILjava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsAIScore(ILjava/util/List;)I

    move-result v0

    invoke-static {p0, p2, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsAIScore_BestID(ILjava/util/List;I)I

    move-result v1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-static {p0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildManpower;->updateScore(III)V

    :goto_0
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x1

    if-lez p1, :cond_6

    const/4 p1, 0x0

    move v4, v3

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    const/16 v6, 0x64

    if-ge v4, v5, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    const/16 v6, 0x32

    if-ge v5, v6, :cond_1

    :goto_2
    move p1, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    const v7, -0x368bdc10    # -999999.0f

    iput v7, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-virtual {p1, v4, v7}, Laoc/kingdoms/lukasz/map/province/Province;->addBuildingConstruction(II)Z

    move-result p1

    if-nez p1, :cond_3

    return v3

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_4

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {p1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_CHANGE_BUILDING_CHANCE:I

    if-ge p1, v4, :cond_4

    invoke-static {p0, p2, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsAIScore_BestID(ILjava/util/List;I)I

    move-result p1

    if-eq v1, p1, :cond_4

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-static {p0, v1, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildManpower;->updateScore(III)V

    move v1, p1

    :cond_4
    sget-object p1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    if-eqz p1, :cond_5

    sget-object p1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    aget p1, p1, v4

    cmpl-float p1, p1, v5

    if-lez p1, :cond_5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->balance_StopBuildingConstruction(I)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    move p1, v2

    goto/16 :goto_0

    :cond_6
    return v3
.end method

.method public static updateScore(III)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->isUnderConstruction(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->buildProvince_AIBuildScore_Default(II)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->buildProvince_AIBuildScore_GrowthRateManpower(I)V

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    if-eqz v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    aget v2, v2, p2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->buildProvince_AIBuildScore_ProvinceMaintenance(I)V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const v2, -0x368bdc10    # -999999.0f

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
