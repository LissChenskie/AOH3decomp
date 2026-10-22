.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace;
.super Ljava/lang/Object;
.source "AI_MoveAtPeace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static moveAtPeace(I)V
    .locals 14

    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    if-gtz v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    if-lez v0, :cond_25

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v2, v3, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V

    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v4, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isInMoveUnits_ArmyKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    goto :goto_1

    :cond_2
    iget-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_3

    new-instance v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    invoke-direct {v4, v5, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;-><init>(Laoc/kingdoms/lukasz/map/army/ArmyPosition;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitMercenaries;->recruitMercenaries(I)V

    :cond_5
    return-void

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz v3, :cond_8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const v4, 0x47c35000    # 100000.0f

    if-lez v3, :cond_11

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    move v5, v1

    move v6, v5

    :goto_5
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v7

    if-ge v5, v7, :cond_a

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p0, v7}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/2addr v6, v7

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyMovingToProvince_MoveUnits(I)I

    move-result v5

    sub-int/2addr v6, v5

    if-lez v6, :cond_10

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result v5

    if-lt v5, v6, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_6
    if-ltz v5, :cond_b

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->armyPosition:Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v8

    iput v8, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_b
    :goto_7
    if-lez v6, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move v7, v1

    :goto_8
    if-lez v5, :cond_d

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_c

    move v7, v5

    :cond_c
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    :cond_d
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    cmpl-float v5, v5, v4

    if-nez v5, :cond_e

    goto :goto_9

    :cond_e
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->armyPosition:Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v9, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->armyPosition:Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v11, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->iRegiments:I

    sub-int/2addr v6, v5

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_f
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iput v4, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    goto :goto_7

    :cond_10
    :goto_9
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_11
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_12

    return-void

    :cond_12
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    add-int/lit8 v3, v3, -0x1

    :goto_a
    if-ltz v3, :cond_14

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_13
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    :goto_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    :cond_14
    :goto_c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v5

    if-gtz v5, :cond_1b

    move v5, v1

    move v6, v5

    :goto_d
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v7

    if-ge v5, v7, :cond_16

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-ne v7, p0, :cond_15

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v7

    if-eqz v7, :cond_15

    add-int/lit8 v6, v6, 0x1

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_16
    move v5, v1

    :goto_e
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v7

    if-ge v5, v7, :cond_1b

    move v7, v1

    move v8, v7

    :goto_f
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v9

    if-ge v7, v9, :cond_18

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    if-ne v9, p0, :cond_17

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v9

    if-eqz v9, :cond_17

    add-int/lit8 v8, v8, 0x1

    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_18
    if-ge v6, v8, :cond_1a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_10
    if-ltz v7, :cond_1a

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    if-ne v8, v9, :cond_19

    move v3, v7

    goto :goto_11

    :cond_19
    add-int/lit8 v7, v7, -0x1

    goto :goto_10

    :cond_1a
    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_e

    :cond_1b
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_REGIMENTS_MIN:I

    add-int/lit8 v5, v5, 0x1

    move v6, v1

    :goto_12
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v7

    if-ge v6, v7, :cond_1d

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p0, v7}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/2addr v5, v7

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_1d
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyMovingToProvince_MoveUnits(I)I

    move-result v6

    sub-int/2addr v5, v6

    if-lez v5, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_13
    if-ltz v6, :cond_1e

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->armyPosition:Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v8

    iput v8, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    add-int/lit8 v6, v6, -0x1

    goto :goto_13

    :cond_1e
    :goto_14
    if-lez v5, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    :goto_15
    if-lez v6, :cond_20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1f

    move v7, v6

    :cond_1f
    add-int/lit8 v6, v6, -0x1

    goto :goto_15

    :cond_20
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    cmpl-float v6, v6, v4

    if-nez v6, :cond_21

    goto :goto_16

    :cond_21
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->armyPosition:Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v9, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->armyPosition:Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v11, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->iRegiments:I

    sub-int/2addr v5, v6

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_14

    :cond_22
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iput v4, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    goto :goto_14

    :cond_23
    :goto_16
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_c

    :cond_24
    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_17

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_25
    :goto_17
    return-void
.end method
