.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_ReorganizeArmies;
.super Ljava/lang/Object;
.source "AI_ReorganizeArmies.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static borderWithPreparingForWar(Laoc/kingdoms/lukasz/map/civilization/Civilization;Laoc/kingdoms/lukasz/map/province/Province;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    if-ne v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static final buildProvincesScore(I)V
    .locals 5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_GROWTH_RATE:F

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_ECONOMY:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v1, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_PROVINCE_INCOME:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiDistanceToCapital:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_DISTANCE:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final buildProvincesScore_PrepareForWar(I)V
    .locals 6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_ReorganizeArmies;->borderWithPreparingForWar(Laoc/kingdoms/lukasz/map/civilization/Civilization;Laoc/kingdoms/lukasz/map/province/Province;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_PREPARE_FOR_WAR_BORDERS_WITH_CIV:F

    goto :goto_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    iget v3, v1, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_PREPARE_FOR_WAR_PROVINCE_INCOME:F

    mul-float/2addr v3, v4

    iget v4, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiDistanceToCapital:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_PREPARE_FOR_WAR_DISTANCE:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static reorganizeArmies_AtPeace(I)V
    .locals 27

    move/from16 v1, p0

    :try_start_0
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    move v2, v11

    :goto_0
    iget v3, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v2, v3, :cond_2

    invoke-virtual {v8, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v8, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v4, v1, :cond_1

    iget-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_1

    iget-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v4, :cond_1

    invoke-virtual {v8, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v4, v1, :cond_0

    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    invoke-virtual {v8, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v5

    iget-object v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/map/army/ArmyPosition;-><init>(ILjava/lang/String;)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    invoke-virtual {v8, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v5

    iget-object v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/map/army/ArmyPosition;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isInMoveUnits_ArmyKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-boolean v11, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    iput-boolean v11, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_ReorganizeArmies;->buildProvincesScore(I)V

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_CAPITAL:F

    add-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    goto :goto_2

    :cond_3
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_ReorganizeArmies;->buildProvincesScore_PrepareForWar(I)V

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_PREPARE_FOR_WAR_CAPITAL:F

    add-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    :goto_2
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v2

    new-instance v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    const/4 v13, 0x2

    mul-int/2addr v2, v13

    int-to-float v2, v2

    iget-object v3, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_First:F

    mul-float/2addr v3, v2

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v12, v1, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(II)V

    new-instance v14, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    iget-object v3, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_Second:F

    mul-float/2addr v3, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v14, v1, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(II)V

    new-instance v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    iget-object v3, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_Third:F

    mul-float/2addr v3, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v15, v1, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(II)V

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    iget-object v3, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_Fourth:F

    mul-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v7, v1, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(II)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinces()Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result v2

    int-to-float v2, v2

    iget v3, v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v2, v2, v16

    double-to-int v2, v2

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_6

    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    move v4, v11

    :goto_4
    if-lez v2, :cond_5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    cmpl-float v11, v11, v13

    if-lez v11, :cond_4

    move v4, v2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x2

    goto :goto_4

    :cond_5
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v3

    const/4 v11, 0x0

    const/4 v13, 0x2

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/16 v2, 0x64

    const/4 v11, 0x0

    :goto_5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4b

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4b

    :cond_7
    add-int/lit8 v13, v2, -0x1

    if-lez v2, :cond_4b

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_a

    if-eq v2, v4, :cond_9

    const/4 v4, 0x2

    if-eq v2, v4, :cond_8

    new-instance v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-direct {v2, v7}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;)V

    goto :goto_6

    :cond_8
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-direct {v2, v15}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;)V

    goto :goto_6

    :cond_9
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-direct {v2, v14}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;)V

    goto :goto_6

    :cond_a
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-direct {v2, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;)V

    :goto_6
    move-object v4, v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    const/16 v18, 0x0

    :goto_7
    if-ltz v2, :cond_23

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    if-ne v5, v3, :cond_21

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v21, v6

    move-object/from16 v6, v19

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    if-eqz v5, :cond_1f

    if-nez v18, :cond_b

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    move-object/from16 v18, v6

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    move-object/from16 v19, v7

    iget v7, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    move-object/from16 v22, v12

    iget-object v12, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v6, v7, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_8

    :cond_b
    move-object/from16 v19, v7

    move-object/from16 v22, v12

    :goto_8
    move-object/from16 v6, v18

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getArmyComposition()Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    move-result-object v7

    iget-object v12, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    iget v12, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    move/from16 v23, v13

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v13, v12

    iput v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v13, v12

    iput v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v12, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v13, v12

    iput v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v13, v12

    iput v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iget v12, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v13, v12

    iput v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v13, v12

    iput v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget v12, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v13, v12

    iput v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v13, v12

    iput v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    new-instance v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-direct {v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>()V

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    move-object/from16 v24, v14

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    if-le v13, v14, :cond_c

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    sub-int/2addr v13, v14

    iget v14, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v14, v13

    iput v14, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iput v13, v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    :cond_c
    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    if-le v13, v14, :cond_d

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    sub-int/2addr v13, v14

    iget v14, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v14, v13

    iput v14, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iput v13, v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    :cond_d
    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    if-le v13, v14, :cond_e

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    sub-int/2addr v13, v14

    iget v14, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v14, v13

    iput v14, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iput v13, v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    :cond_e
    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    if-le v13, v14, :cond_f

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    sub-int/2addr v13, v14

    iget v14, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v14, v13

    iput v14, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    iput v13, v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    :cond_f
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    iget v7, v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-lez v7, :cond_11

    iget v7, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget v13, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v12, v13, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_SplitArmy;->splitArmy(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    new-instance v12, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    invoke-direct {v12, v7, v5}, Laoc/kingdoms/lukasz/map/army/ArmyPosition;-><init>(ILjava/lang/String;)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    :cond_11
    invoke-interface {v9, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_13

    :cond_12
    move/from16 v23, v13

    move-object/from16 v24, v14

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v12

    if-eqz v12, :cond_1e

    iget v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-lez v13, :cond_16

    iget v13, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-lez v13, :cond_16

    iget v13, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    :goto_9
    if-ltz v13, :cond_15

    move-object/from16 v18, v6

    sget-object v6, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    move/from16 v25, v14

    iget-object v14, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-nez v6, :cond_14

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {v12, v6}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    invoke-virtual {v5, v13}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(I)V

    iget v6, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    const/4 v14, 0x1

    sub-int/2addr v6, v14

    iput v6, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v6, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-gtz v6, :cond_13

    const/16 v25, 0x1

    goto :goto_b

    :cond_13
    const/4 v14, 0x1

    goto :goto_a

    :cond_14
    move/from16 v14, v25

    :goto_a
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v6, v18

    goto :goto_9

    :cond_15
    move-object/from16 v18, v6

    move/from16 v25, v14

    goto :goto_b

    :cond_16
    move-object/from16 v18, v6

    const/16 v25, 0x0

    :goto_b
    iget v6, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-lez v6, :cond_18

    iget v6, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-lez v6, :cond_18

    iget v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    const/4 v13, 0x1

    sub-int/2addr v6, v13

    :goto_c
    if-ltz v6, :cond_18

    sget-object v13, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v14, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_17

    iget-object v13, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(I)V

    iget v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    iput v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iget v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    const/16 v25, 0x1

    if-gtz v13, :cond_17

    goto :goto_d

    :cond_17
    add-int/lit8 v6, v6, -0x1

    goto :goto_c

    :cond_18
    :goto_d
    iget v6, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-lez v6, :cond_1a

    iget v6, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-lez v6, :cond_1a

    iget v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    const/4 v13, 0x1

    sub-int/2addr v6, v13

    :goto_e
    if-ltz v6, :cond_1a

    sget-object v13, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v14, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_19

    sget-object v13, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v14, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    iget-object v14, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->SiegeUnit:Z

    if-nez v13, :cond_19

    sget-object v13, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v14, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    iget-object v14, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-nez v13, :cond_19

    iget-object v13, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(I)V

    iget v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    iput v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    const/16 v25, 0x1

    if-gtz v13, :cond_19

    goto :goto_f

    :cond_19
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_e

    :cond_1a
    :goto_f
    iget v6, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-lez v6, :cond_1c

    iget v6, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-lez v6, :cond_1c

    iget v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_10
    if-ltz v6, :cond_1c

    sget-object v7, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v13, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v13, 0x2

    if-ne v7, v13, :cond_1b

    sget-object v7, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v14, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    iget-object v14, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->SiegeUnit:Z

    if-eqz v7, :cond_1b

    sget-object v7, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v14, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    iget-object v14, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-nez v7, :cond_1b

    iget-object v7, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {v12, v7}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(I)V

    iget v7, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    const/4 v14, 0x1

    sub-int/2addr v7, v14

    iput v7, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    iget v7, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    const/16 v25, 0x1

    if-gtz v7, :cond_1b

    goto :goto_11

    :cond_1b
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_10

    :cond_1c
    const/4 v13, 0x2

    :goto_11
    if-eqz v25, :cond_20

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v7, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget-object v14, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v7, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v7

    if-ltz v6, :cond_20

    if-ltz v7, :cond_20

    iget v14, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-gtz v14, :cond_1d

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-virtual {v6, v7, v12}, Laoc/kingdoms/lukasz/map/province/Province;->updateRegiment(ILjava/util/List;)Z

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    invoke-interface {v9, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_12

    :cond_1d
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-virtual {v14, v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->updateRegiment(ILjava/util/List;)Z

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v6, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-virtual {v5, v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->updateRegiment(ILjava/util/List;)Z

    :goto_12
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    goto :goto_15

    :cond_1e
    :goto_13
    move-object/from16 v18, v6

    goto :goto_14

    :cond_1f
    move-object/from16 v19, v7

    move-object/from16 v22, v12

    move/from16 v23, v13

    move-object/from16 v24, v14

    :goto_14
    const/4 v13, 0x2

    :cond_20
    :goto_15
    iget v5, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-gtz v5, :cond_22

    goto :goto_16

    :cond_21
    move-object/from16 v21, v6

    move-object/from16 v19, v7

    move-object/from16 v22, v12

    move/from16 v23, v13

    move-object/from16 v24, v14

    const/4 v13, 0x2

    :cond_22
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v7, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v12, v22

    move/from16 v13, v23

    move-object/from16 v14, v24

    goto/16 :goto_7

    :cond_23
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v19, v7

    move-object/from16 v22, v12

    move/from16 v23, v13

    move-object/from16 v24, v14

    const/4 v13, 0x2

    :goto_16
    iget v2, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-lez v2, :cond_37

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    move v12, v2

    move-object/from16 v14, v18

    :goto_17
    if-ltz v12, :cond_36

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getArmyComposition()Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    move-result-object v6

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-direct {v7}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>()V

    iget v5, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-lez v5, :cond_24

    iget v5, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-lez v5, :cond_24

    iget v5, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v13, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v13, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v13, v5

    iput v13, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v13, v5

    iput v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iput v5, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    :cond_24
    iget v5, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-lez v5, :cond_25

    iget v5, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-lez v5, :cond_25

    iget v5, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iget v13, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v13, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v13, v5

    iput v13, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iget v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v13, v5

    iput v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iput v5, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    :cond_25
    iget v5, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-lez v5, :cond_26

    iget v5, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-lez v5, :cond_26

    iget v5, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget v13, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v13, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v13, v5

    iput v13, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v13, v5

    iput v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iput v5, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    :cond_26
    iget v5, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-lez v5, :cond_27

    iget v5, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-lez v5, :cond_27

    iget v5, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    iget v13, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v13, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v13, v5

    iput v13, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    iget v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v13, v5

    iput v13, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    iput v5, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    :cond_27
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    iget v5, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-lez v5, :cond_32

    iget v5, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-nez v5, :cond_2c

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v5, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v6, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v13, 0x0

    move-object v2, v8

    move/from16 v25, v3

    move v3, v5

    move-object v5, v4

    const/16 v16, 0x1

    move/from16 v4, v25

    move-object/from16 v26, v5

    move-object v5, v6

    move v6, v7

    move v7, v13

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_29

    if-nez v14, :cond_28

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v14, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    move/from16 v13, v25

    invoke-virtual {v2, v13, v14}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_18

    :cond_28
    move/from16 v13, v25

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, v13, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_18

    :cond_29
    move/from16 v13, v25

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    if-eqz v2, :cond_2b

    const/4 v3, 0x0

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    if-nez v14, :cond_2a

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v14, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v2, v13, v14}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_18

    :cond_2a
    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, v13, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v2, v13, v14}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->checkMerge(ILjava/lang/String;)V

    :cond_2b
    :goto_18
    invoke-interface {v10, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_19
    move-object/from16 v25, v15

    goto/16 :goto_1b

    :cond_2c
    move v13, v3

    move-object/from16 v26, v4

    const/16 v16, 0x1

    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget v4, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v7, v4, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_SplitArmy;->splitArmy(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    if-eqz v7, :cond_30

    const/4 v6, 0x0

    const/16 v18, 0x0

    move-object v2, v8

    move v4, v13

    move-object v5, v7

    move-object/from16 v25, v15

    move-object v15, v7

    move/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_2e

    if-nez v14, :cond_2d

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v2, v13, v15}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    move-object v14, v15

    goto :goto_1a

    :cond_2d
    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v2, v13, v15}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_1a

    :cond_2e
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    if-eqz v2, :cond_31

    const/4 v3, 0x0

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    if-nez v14, :cond_2f

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v14, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v2, v13, v14}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_1a

    :cond_2f
    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, v13, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v2, v13, v14}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->checkMerge(ILjava/lang/String;)V

    goto :goto_1a

    :cond_30
    move-object/from16 v25, v15

    :cond_31
    :goto_1a
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    if-nez v2, :cond_34

    invoke-interface {v10, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1b

    :cond_32
    move v13, v3

    move-object/from16 v26, v4

    move-object/from16 v25, v15

    const/16 v16, 0x1

    goto :goto_1b

    :cond_33
    move v13, v3

    move-object/from16 v26, v4

    move/from16 v16, v5

    goto/16 :goto_19

    :cond_34
    :goto_1b
    move-object/from16 v15, v26

    iget v2, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-gtz v2, :cond_35

    goto :goto_1c

    :cond_35
    add-int/lit8 v12, v12, -0x1

    move v3, v13

    move-object v4, v15

    move/from16 v5, v16

    move-object/from16 v15, v25

    const/4 v13, 0x2

    goto/16 :goto_17

    :cond_36
    move v13, v3

    move/from16 v16, v5

    move-object/from16 v25, v15

    move-object v15, v4

    :goto_1c
    move-object/from16 v18, v14

    goto :goto_1d

    :cond_37
    move v13, v3

    move-object/from16 v25, v15

    const/16 v16, 0x1

    move-object v15, v4

    :goto_1d
    iget v2, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-lez v2, :cond_49

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v12, v2

    move-object/from16 v14, v18

    :goto_1e
    if-ltz v12, :cond_49

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getArmyComposition()Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    move-result-object v3

    new-instance v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>()V

    iget v5, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-lez v5, :cond_38

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-lez v5, :cond_38

    iget v5, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v6, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v6, v5

    iput v6, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v6, v5

    iput v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    :cond_38
    iget v5, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-lez v5, :cond_39

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-lez v5, :cond_39

    iget v5, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iget v6, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v6, v5

    iput v6, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iget v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v6, v5

    iput v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    :cond_39
    iget v5, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-lez v5, :cond_3a

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-lez v5, :cond_3a

    iget v5, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget v6, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v6, v5

    iput v6, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v6, v5

    iput v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    :cond_3a
    iget v5, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-lez v5, :cond_3b

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-lez v5, :cond_3b

    iget v5, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    iget v6, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v6, v5

    iput v6, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    iget v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v6, v5

    iput v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    :cond_3b
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    iget v5, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-lez v5, :cond_40

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-nez v3, :cond_41

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v5, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move v4, v13

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_3d

    if-nez v14, :cond_3c

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v14, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v2, v13, v14}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_1f

    :cond_3c
    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, v13, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_1f

    :cond_3d
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    if-eqz v2, :cond_3f

    const/4 v3, 0x0

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    if-nez v14, :cond_3e

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v14, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v2, v13, v14}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_1f

    :cond_3e
    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, v13, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v2, v13, v14}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->checkMerge(ILjava/lang/String;)V

    :cond_3f
    :goto_1f
    invoke-interface {v9, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_40
    move-object/from16 v26, v10

    const/4 v3, 0x0

    goto/16 :goto_22

    :cond_41
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget v5, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_SplitArmy;->splitArmy(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_46

    const/4 v6, 0x0

    const/16 v18, 0x0

    move-object v2, v8

    move v4, v13

    move-object v5, v7

    move-object/from16 v26, v10

    move-object v10, v7

    move/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_44

    if-nez v14, :cond_43

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v2, v13, v10}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    move-object v14, v10

    :cond_42
    :goto_20
    const/4 v3, 0x0

    goto :goto_21

    :cond_43
    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v2, v13, v10}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_20

    :cond_44
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    if-eqz v2, :cond_42

    const/4 v3, 0x0

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    if-nez v14, :cond_45

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v14, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v2, v13, v14}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_21

    :cond_45
    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, v13, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v2, v13, v14}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->checkMerge(ILjava/lang/String;)V

    goto :goto_21

    :cond_46
    move-object/from16 v26, v10

    goto :goto_20

    :goto_21
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    if-nez v2, :cond_47

    invoke-interface {v9, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_47
    :goto_22
    iget v2, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-gtz v2, :cond_48

    goto :goto_23

    :cond_48
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v10, v26

    goto/16 :goto_1e

    :cond_49
    move-object/from16 v26, v10

    const/4 v3, 0x0

    :goto_23
    add-int/lit8 v11, v11, 0x1

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lt v11, v2, :cond_4a

    move v11, v3

    :cond_4a
    move/from16 v4, v16

    move-object/from16 v7, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v12, v22

    move/from16 v2, v23

    move-object/from16 v14, v24

    move-object/from16 v15, v25

    move-object/from16 v10, v26

    goto/16 :goto_5

    :cond_4b
    move/from16 v16, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v26, v10

    :try_start_1
    iget v2, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    add-int/lit8 v2, v2, -0x1

    :goto_24
    if-ltz v2, :cond_4d

    invoke-virtual {v8, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v8, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    if-eqz v3, :cond_4c

    iget-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v4, :cond_4c

    iget-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_4c

    iget-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v4, :cond_4c

    iget v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MERGE_ALL_IN_PROVINCE_WITH_REGIMENTS_BELOW:I

    if-ge v4, v5, :cond_4c

    iget v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v1, v4, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->mergeArmy_InProvince(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4c
    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4d
    invoke-interface {v9}, Ljava/util/List;->clear()V

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->clear()V

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_25

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_25
    return-void
.end method
