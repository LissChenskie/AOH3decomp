.class public Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Alliances;
.super Ljava/lang/Object;
.source "AI_Alliances.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canBeAlly(II)Z
    .locals 2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isRival(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isRival(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->isPreparingForWarWithCivID(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->isPreparingForWarWithCivID(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getMaxNumberOfAlliances(I)I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->haveAlliance(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->ENABLE_CALL_VASSALS:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result p1

    if-eq p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static findAlly(I)V
    .locals 10

    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateAlliance_ConqueredProvinces(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getMaxNumberOfAlliances(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->clearPrepareForAlliance()V

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Alliances;->canBeAlly(II)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->t:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v2, v3, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly_AllianceCheck(II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Alliances;->canBeAlly(II)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_5
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_ALLIANCE_COST:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Alliances;->sendAllianceProposal(II)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3
    if-ltz v0, :cond_7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    invoke-virtual {v2, p0, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addImproveRelations(II)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getMaxNumberOfAlliances(I)I

    move-result v2

    if-ge v0, v2, :cond_f

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_ALLIANCE_NEIGH_OF_NEIGH_OF_NEIGH_CHANCE:I

    const/4 v5, 0x0

    if-ge v3, v4, :cond_8

    goto :goto_4

    :cond_8
    move v1, v5

    :goto_4
    move v3, v5

    :goto_5
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    if-ge v3, v4, :cond_e

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {p0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Alliances;->canBeAlly(II)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eq v4, p0, :cond_9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move v6, v5

    :goto_6
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    if-ge v6, v7, :cond_d

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {p0, v7}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Alliances;->canBeAlly(II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    if-eq v7, p0, :cond_a

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz v1, :cond_c

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    move v8, v5

    :goto_7
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    if-ge v8, v9, :cond_c

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {p0, v9}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Alliances;->canBeAlly(II)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    if-eq v9, p0, :cond_b

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_e
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Alliances;->findBestAlly(ILjava/util/List;)I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, p0, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addImproveRelations(II)Z

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->addPrepareForAlliance(I)Z

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Alliances;->sendAllianceProposal(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_f
    :goto_8
    return-void
.end method

.method public static findAllyScore(II)F
    .locals 5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-ltz v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_ALLY_SCORE_DISTANCE:F

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    if-ne v0, v3, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_ALLY_SCORE_RELIGION_THE_SAME:F

    :goto_1
    add-float/2addr v2, v0

    goto :goto_2

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->ReligionGroupID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->ReligionGroupID:I

    if-ne v0, v3, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_ALLY_SCORE_RELIGION_THE_SAME_GROUP:F

    goto :goto_1

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_ALLY_SCORE_RELIGION_DIFFERENT_GROUP:F

    goto :goto_1

    :goto_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v0

    div-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_ALLY_SCORE_RELATIONS:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v1

    if-ne v0, v1, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_ALLY_SCORE_GOVERNMENT_THE_SAME:F

    :goto_3
    add-float/2addr v2, v0

    goto :goto_4

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->GOV_GROUP_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->GOV_GROUP_ID:I

    if-ne v0, v1, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_ALLY_SCORE_GOVERNMENT_THE_SAME_GROUP:F

    goto :goto_3

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_ALLY_SCORE_GOVERNMENT_DIFFERENT_GROUP:F

    goto :goto_3

    :goto_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_ALLY_SCORE_RANK_SCORE:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_ALLY_SCORE_RANK_SCORE:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    goto :goto_5

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_ALLY_SCORE_RANK_SCORE:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    :goto_5
    div-float/2addr v3, v4

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_ALLY_SCORE_HAVE_THE_SAME_RIVAL:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->haveTheSameRival(II)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget p0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_ALLY_SCORE_HAVE_THE_SAME_RIVAL:F

    add-float/2addr v2, p0

    :cond_7
    return v2
.end method

.method public static findBestAlly(ILjava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Alliances;->findAllyScore(II)F

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lez v2, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Alliances;->findAllyScore(II)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    move v0, v2

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static sendAllianceProposal(II)Z
    .locals 2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_ALLIANCE_COST:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getAlliance_Score(II)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->offerAlliance(II)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final update()V
    .locals 2

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_DIPLOMACY_ALLIANCES:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Alliances;->update(I)V

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_DIPLOMACY_ALLIANCES:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_DIPLOMACY_ALLIANCES:I

    :goto_1
    add-int/2addr v0, v1

    :cond_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Alliances;->update(I)V

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_DIPLOMACY_ALLIANCES:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public static final update(I)V
    .locals 1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Alliances;->findAlly(I)V

    :cond_0
    return-void
.end method
