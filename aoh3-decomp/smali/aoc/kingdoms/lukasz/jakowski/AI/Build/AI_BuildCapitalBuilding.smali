.class public Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildCapitalBuilding;
.super Ljava/lang/Object;
.source "AI_BuildCapitalBuilding.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildBuilding(II)Z
    .locals 5

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_CHANGE_UPGRADE_CAPITAL_BUILDING_CHANCE:I

    if-ge p1, v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildCapitalBuilding;->upgradeCapitalBuilding(I)V

    :cond_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->capitalBuildings:Ljava/util/List;

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsAIScore(ILjava/util/List;)I

    move-result v0

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsAIScore_BestID(ILjava/util/List;I)I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-virtual {p0, v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->addBuildingConstruction(II)Z

    return v1

    :cond_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildCapitalBuilding;->upgradeCapitalBuilding(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static chooseBuildingType()I
    .locals 5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL_TOTAL:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final upgradeCapitalBuilding(I)V
    .locals 2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildCapitalBuilding;->chooseBuildingType()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getSupremeCourtLevel()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->upgradeSupremeCourt()Z

    goto :goto_0

    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->upgradeMilitaryAcademyForGenerals()Z

    goto :goto_0

    :cond_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->upgradeMilitaryAcademy()Z

    goto :goto_0

    :cond_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->upgradeCapitalCity()Z

    :cond_4
    :goto_0
    return-void
.end method
