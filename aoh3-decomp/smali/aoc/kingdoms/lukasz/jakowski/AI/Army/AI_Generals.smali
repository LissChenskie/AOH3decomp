.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Generals;
.super Ljava/lang/Object;
.source "AI_Generals.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recruitGenerals(I)V
    .locals 10

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq p0, v0, :cond_8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keysSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v1, :cond_8

    :try_start_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getGeneralsNotAssignedSize()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->RECRUIT_GENERAL_GOLD_COST:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->RECRUIT_GENERAL_LEGACY_COST:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Loan;->takeLoan(I)Z

    :cond_0
    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->RECRUIT_GENERAL_GOLD_COST:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_8

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->RECRUIT_GENERAL_LEGACY_COST:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keysSize:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keys:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keys:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->removeArmyKey(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_1
    iget v6, v4, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v7, v4, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-nez v6, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keys:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->removeArmyKey(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    add-int/2addr v3, v5

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_3
    iget v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->RECRUIT_GENERAL_GOLD_COST:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_8

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->keys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->RECRUIT_GENERAL_LEGACY_COST:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x32

    if-ge v3, v6, :cond_8

    move v6, v2

    move v3, v5

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v7, v8, :cond_4

    move v6, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getGeneralsNotAssignedSize()I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v3, v7, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->assignGeneralToArmy(II)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-static {p0, v3, v7}, Laoc/kingdoms/lukasz/map/GeneralManager;->recruitGeneral_AI(III)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    move v3, v4

    goto/16 :goto_3

    :cond_7
    return-void

    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    return-void
.end method
