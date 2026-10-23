.class public Laoc/kingdoms/lukasz/map/CoalitionManager;
.super Ljava/lang/Object;
.source "CoalitionManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCoalition(I)V
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget-object v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    if-ge v4, v6, :cond_1

    iget-object v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {p0, v6}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->haveDefensivePact(I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p0, v6}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    add-int/2addr v5, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar_AlliesDefender(II)Ljava/util/List;

    move-result-object v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    const/4 v7, 0x1

    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v7

    :goto_1
    if-ltz v8, :cond_2

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v6, v9

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    int-to-float v4, v5

    int-to-float v8, v6

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->COALITION_ARMY_OVER_PERC:F

    mul-float/2addr v9, v8

    cmpg-float v4, v4, v9

    if-gez v4, :cond_5

    move v4, v3

    :goto_2
    iget-object v9, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    if-ge v4, v9, :cond_5

    iget-object v9, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    move v10, v3

    :goto_3
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    if-ge v10, v11, :cond_4

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {p0, v11}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->haveDefensivePact(I)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {p0, v11}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    if-eq p0, v11, :cond_3

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    add-int/2addr v5, v11

    new-instance v11, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-direct {v11, v12, v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-float v11, v5

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->COALITION_ARMY_OVER_PERC:F

    mul-float/2addr v12, v8

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    iget-object v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_4
    :goto_4
    add-int/2addr v4, v7

    goto/16 :goto_2

    :cond_5
    if-le v5, v6, :cond_a

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v4, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v7, :cond_6

    return-void

    :cond_6
    move v2, v7

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    move v4, v7

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    if-ge v5, v6, :cond_8

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v5, v6, :cond_8

    move v2, v4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, p0, v3, v0, v7}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar(IIZLjava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result p0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->COALITION_STARTED_REDUCE_AGGRESSIVE_EXPANSION:F

    mul-float/2addr p0, v2

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setAggressiveExpansion(F)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v7

    :goto_7
    if-ltz p0, :cond_a

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->addMilitaryAccess(II)Z

    add-int/lit8 p0, p0, -0x1

    goto :goto_7

    :cond_a
    return-void
.end method

.method public static final updateCreateCoalition()V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_COALITION:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/CoalitionManager;->updateCreateCoalition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_COALITION:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final updateCreateCoalition(I)V
    .locals 2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->START_COALITION_IF_AE_OVER:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p0, v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->NORMAL_ID:I

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/CoalitionManager;->createCoalition(I)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/CoalitionManager;->createCoalition(I)V

    :cond_1
    :goto_0
    return-void
.end method
