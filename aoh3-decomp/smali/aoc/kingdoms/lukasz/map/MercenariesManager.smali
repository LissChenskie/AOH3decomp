.class public Laoc/kingdoms/lukasz/map/MercenariesManager;
.super Ljava/lang/Object;
.source "MercenariesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;,
        Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMercenaryArmies(I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_e

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MERCENARIES_LIMIT_TO_CHOOSE_FROM:I

    if-ge v3, v4, :cond_e

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    invoke-direct {v5}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;-><init>()V

    int-to-float v6, v1

    int-to-float v7, v3

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MERCENARIES_LIMIT_TO_CHOOSE_FROM:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v2

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    sget-object v9, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-eqz v9, :cond_0

    sget-object v9, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    :cond_0
    sget-object v9, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-nez v9, :cond_1

    new-instance v9, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v11, v11, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v9, v10, v11}, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;-><init>(II)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    move v8, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    new-instance v9, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    invoke-direct {v9}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    move v8, v2

    :goto_3
    if-ge v8, v6, :cond_4

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;->iUnitID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;

    iget v9, v9, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;->iArmyID:I

    invoke-virtual {v10, v11, v9}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->addArmy(II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    move v9, v2

    :goto_5
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iArmyID:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->addArmy(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    invoke-interface {v7}, Ljava/util/List;->clear()V

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move v8, v2

    :goto_6
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    sget-object v9, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    sget-object v9, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-nez v9, :cond_7

    new-instance v9, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v11, v11, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v9, v10, v11}, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;-><init>(II)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_c

    move v8, v2

    :goto_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_9

    new-instance v9, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    invoke-direct {v9}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    move v8, v2

    :goto_8
    if-ge v8, v6, :cond_a

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;->iUnitID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;

    iget v9, v9, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;->iArmyID:I

    invoke-virtual {v10, v11, v9}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->addArmy(II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_a
    move v6, v2

    :goto_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_c

    move v8, v2

    :goto_a
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_b

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iArmyID:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->addArmy(II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_c
    invoke-interface {v7}, Ljava/util/List;->clear()V

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, v5, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    invoke-virtual {v5, p0}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->buildCost(I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_e
    return-object v0
.end method

.method public static final recruitMercenaries(IILaoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;)Z
    .locals 6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget v1, p2, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iCost:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p2, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    new-instance v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v4, p2, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p2, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iArmyID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-direct {v1, p0, p1, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget p2, p2, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iCost:I

    int-to-float p2, p2

    sub-float/2addr v0, p2

    iput v0, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p1, p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    const/4 p0, 0x1

    return p0
.end method
