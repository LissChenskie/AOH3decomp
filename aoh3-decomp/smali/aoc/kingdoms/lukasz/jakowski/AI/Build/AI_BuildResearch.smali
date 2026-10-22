.class public Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildResearch;
.super Ljava/lang/Object;
.source "AI_BuildResearch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildResearchBuilding(II)Z
    .locals 17

    move/from16 v0, p0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getMaxResearch(I)F

    move-result v3

    cmpl-float v2, v2, v3

    const/16 v3, 0x64

    const/4 v4, 0x0

    if-ltz v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_MAX_RESEARCH_UPGRADE_CAPITAL_CHANCE:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v2

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_MaxLvl(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Cost(I)F

    move-result v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->upgradeCapitalCity()Z

    :cond_0
    return v4

    :cond_1
    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    move v5, v4

    :goto_0
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v5, v6, :cond_4

    move v6, v4

    :goto_1
    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-ge v6, v7, :cond_3

    sget-object v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    if-eqz v7, :cond_2

    sget-object v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v8

    aget v7, v7, v8

    add-float/2addr v2, v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getMaxResearch(I)F

    move-result v5

    cmpl-float v6, v2, v5

    const/4 v7, 0x1

    if-ltz v6, :cond_5

    return v7

    :cond_5
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v6, v8

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->MAX_RESEARCH_EXPENSES_PERC_OF_INCOME:F

    mul-float/2addr v6, v8

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getResearchCost(IF)F

    move-result v8

    sub-float/2addr v6, v8

    const/4 v8, 0x0

    cmpg-float v9, v6, v8

    if-gez v9, :cond_6

    return v7

    :cond_6
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->research:Ljava/util/List;

    invoke-static {v0, v9}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-static {v0, v9}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsAIScore(ILjava/util/List;)I

    move-result v10

    invoke-static {v0, v9, v10}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsAIScore_BestID(ILjava/util/List;I)I

    move-result v10

    move v11, v4

    :goto_2
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v12

    const v13, -0x368bdc10    # -999999.0f

    if-ge v11, v12, :cond_a

    invoke-virtual {v1, v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-virtual {v14, v15, v4}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-virtual {v4, v14, v15}, Laoc/kingdoms/lukasz/map/province/Province;->isUnderConstruction(II)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v0, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->buildProvince_AIBuildScore_Default(II)V

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_9

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->buildProvince_AIBuildScore_ProvinceMaintenance(I)V

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->buildProvince_AIBuildScore_DistanceToCapital(I)V

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->buildProvince_AIBuildScore_GrowthRateResearch(I)V

    goto :goto_4

    :cond_8
    :goto_3
    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iput v13, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    :cond_9
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_a
    move v4, v2

    move/from16 v2, p1

    :goto_5
    add-int/lit8 v11, v2, -0x1

    if-lez v2, :cond_12

    move v2, v7

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v14

    if-ge v2, v14, :cond_d

    invoke-virtual {v1, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v1, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    cmpl-float v14, v14, v15

    if-nez v14, :cond_c

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v14, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    const/16 v15, 0x32

    if-ge v14, v15, :cond_c

    :goto_7
    move v12, v2

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    invoke-virtual {v1, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    cmpl-float v12, v12, v8

    if-lez v12, :cond_12

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iput v13, v12, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-virtual {v2, v12, v14}, Laoc/kingdoms/lukasz/map/province/Province;->addBuildingConstruction(II)Z

    move-result v2

    if-nez v2, :cond_e

    return v7

    :cond_e
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    if-eqz v2, :cond_10

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    aget v2, v2, v12

    add-float/2addr v4, v2

    cmpl-float v2, v4, v5

    if-ltz v2, :cond_f

    return v7

    :cond_f
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    aget v2, v2, v12

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getResearchCost(IF)F

    move-result v2

    sub-float/2addr v6, v2

    cmpg-float v2, v6, v8

    if-gez v2, :cond_10

    return v7

    :cond_10
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    if-eqz v2, :cond_11

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    aget v2, v2, v12

    cmpl-float v2, v2, v8

    if-lez v2, :cond_11

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->balance_StopBuildingConstruction_Research(I)Z

    move-result v2

    if-eqz v2, :cond_11

    return v7

    :cond_11
    move v2, v11

    goto/16 :goto_5

    :cond_12
    return v7

    :cond_13
    move v0, v4

    return v0
.end method
