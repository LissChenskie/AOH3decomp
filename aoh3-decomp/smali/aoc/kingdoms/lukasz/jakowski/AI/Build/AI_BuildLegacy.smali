.class public Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildLegacy;
.super Ljava/lang/Object;
.source "AI_BuildLegacy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildBuilding(IILjava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DONT_BUILD_LEGACY_BUILDING_IF_LEGACY_OVER:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsAIScore(ILjava/util/List;)I

    move-result v0

    invoke-static {p0, p2, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsAIScore_BestID(ILjava/util/List;I)I

    move-result v2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-static {p0, v3, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildLegacy;->updateScore(III)V

    :goto_0
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x1

    if-lez p1, :cond_7

    move v5, v1

    move p1, v4

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    const/16 v7, 0x64

    if-ge p1, v6, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_2

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/16 v7, 0x32

    if-ge v6, v7, :cond_2

    :goto_2
    move v5, p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    const v8, -0x368bdc10    # -999999.0f

    iput v8, v5, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-virtual {p1, v5, v8}, Laoc/kingdoms/lukasz/map/province/Province;->addBuildingConstruction(II)Z

    move-result p1

    if-nez p1, :cond_4

    return v4

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_5

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {p1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_CHANGE_BUILDING_CHANCE:I

    if-ge p1, v5, :cond_5

    invoke-static {p0, p2, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsAIScore_BestID(ILjava/util/List;I)I

    move-result p1

    if-eq v2, p1, :cond_5

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-static {p0, v2, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildLegacy;->updateScore(III)V

    move v2, p1

    :cond_5
    sget-object p1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    if-eqz p1, :cond_6

    sget-object p1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    aget p1, p1, v5

    cmpl-float p1, p1, v6

    if-lez p1, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->balance_StopBuildingConstruction(I)Z

    move-result p1

    if-eqz p1, :cond_6

    return v4

    :cond_6
    move p1, v3

    goto/16 :goto_0

    :cond_7
    return v4
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
