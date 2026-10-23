.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitMercenaries;
.super Ljava/lang/Object;
.source "AI_RecruitMercenaries.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recruitMercenaries(I)V
    .locals 6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->averageArmyCost:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MERCENARIES_COST_EXTRA_PER_REGIMENT:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    if-le v3, v4, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_RECRUIT_COST_OVER:F

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_MERCENARIES_MIN_REGIMENTS:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    move v4, v0

    :goto_2
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p0, v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/2addr v2, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    int-to-float v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_MERCENARIES_ENEMY_ARMIES_MODIFIER:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_MERCENARIES_OWN_ARMIES_MODIFIER:F

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_MERCENARIES_OWN_ARMIES_MODIFIER:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    :cond_5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitMercenaries;->recruitMercenaries(II)V

    return-void
.end method

.method public static recruitMercenaries(II)V
    .locals 6

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->averageArmyCost:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MERCENARIES_COST_EXTRA_PER_REGIMENT:F

    iget v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    iget v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    if-le v4, v5, :cond_1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_RECRUIT_COST_OVER:F

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_MERCENARIES_MIN_REGIMENTS:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_MERCENARIES_ACTION_LIMIT:I

    if-ge v2, v0, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitMercenaries;->recruitMercenariesArmy(II)I

    move-result v3

    if-nez v3, :cond_4

    return-void

    :cond_4
    sub-int/2addr p1, v3

    if-ltz p1, :cond_5

    return-void

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_MERCENARIES_ACTION_LIMIT:I

    if-le v3, v4, :cond_6

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private static recruitMercenariesArmy(II)I
    .locals 4

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/MercenariesManager;->getMercenaryArmies(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iCost:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    invoke-static {p0, p1, v2}, Laoc/kingdoms/lukasz/map/MercenariesManager;->recruitMercenaries(IILaoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
