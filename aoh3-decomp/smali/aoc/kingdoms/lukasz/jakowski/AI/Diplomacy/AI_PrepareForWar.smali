.class public Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar;
.super Ljava/lang/Object;
.source "AI_PrepareForWar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildScoreManpower(II)V
    .locals 3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-wide p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    div-double/2addr v1, p0

    double-to-float p0, v1

    iput p0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    goto :goto_0

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    const p1, 0x49741c40    # 999876.0f

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    :goto_0
    return-void
.end method

.method public static differentGovernment(II)Z
    .locals 0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result p0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static differentReligion(II)Z
    .locals 0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result p0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getClosestCivs(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v5

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance(II)F

    move-result v4

    invoke-direct {v3, v2, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;-><init>(IF)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    :goto_2
    if-lez v2, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;->distance:F

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;->distance:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    move v3, v2

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;->civID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public static isCivAlly(II)Z
    .locals 1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly_AllianceCheck(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->haveNonAggressionPact(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->haveNonAggressionPact(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->haveDefensivePact(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {p1, p0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->haveDefensivePact(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final prepareForWar()V
    .locals 3

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_PREPARE_FOR_WAR:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar;->prepareForWar(II)V

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_PREPARE_FOR_WAR:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_PREPARE_FOR_WAR:I

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

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar;->prepareForWar(II)V

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_PREPARE_FOR_WAR:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public static final prepareForWar(II)V
    .locals 14

    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_ONLY_IF_GOLD_OVER:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object p0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->clearPrepareForWar()V

    return-void

    :cond_0
    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_ONLY_IF_CIV_STABILITY_IS_BELOW_100:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_ONLY_IF_AE_IS_BELOW:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    return-void

    :cond_2
    iget-wide v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    iget-wide v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    div-double/2addr v1, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_ONLY_IF_MANPOWER_PERC_OVER:F

    float-to-double v3, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    if-eq v1, p0, :cond_4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getVassal_CanDeclareWar(I)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_RANDOM_MAX:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CHANCE:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getExtraAggressiveness()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_EXTRA_AGGRESSIVENESS:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_AI_EXTRA_AGGRESSIVENESS:[I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiAggressivnes:I

    add-int/2addr v2, v3

    add-int/2addr v2, p1

    if-le v1, v2, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_PRIORITIZE_TRIBAL:Z

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_PRIORITIZE_NEIGBORS_TRIBAL_CHANCE:I

    if-ge v1, v4, :cond_a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v4

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->TRIBAL:Z

    if-nez v1, :cond_a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Tribal:Z

    if-nez v1, :cond_a

    move v1, v3

    :goto_0
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    if-ge v1, v4, :cond_a

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->TRIBAL:Z

    if-nez v4, :cond_8

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Tribal:Z

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-lez v4, :cond_9

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {p0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar;->isCivAlly(II)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v4

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v5

    if-le v4, v5, :cond_9

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-le v4, v5, :cond_9

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_16

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_TOP_RANK_CIVS:I

    if-ge v1, v5, :cond_16

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAccessSea:Z

    if-eqz v1, :cond_16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_TOP_RANK_CIVS_CHANCE:I

    if-ge v1, v5, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    if-ge v5, p0, :cond_e

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v7

    if-lez v7, :cond_d

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v8

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->TRIBAL:Z

    if-nez v7, :cond_b

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v8

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Tribal:Z

    if-eqz v7, :cond_d

    :cond_b
    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v8

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v9

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance_PercOfMax(II)F

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-boolean v9, v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->prioritizeColonization:Z

    if-eqz v9, :cond_c

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_PRIORITIZE_CONTINENT_MODIFIER:F

    :cond_c
    mul-float/2addr v8, v6

    invoke-direct {v7, v5, v8}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;-><init>(IF)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_e
    add-int/lit8 v5, p0, 0x1

    :goto_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v5, v7, :cond_12

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v7

    if-lez v7, :cond_11

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v8

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->TRIBAL:Z

    if-nez v7, :cond_f

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v8

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Tribal:Z

    if-eqz v7, :cond_11

    :cond_f
    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v8

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v9

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance_PercOfMax(II)F

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-boolean v9, v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->prioritizeColonization:Z

    if-eqz v9, :cond_10

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_PRIORITIZE_CONTINENT_MODIFIER:F

    goto :goto_3

    :cond_10
    move v9, v6

    :goto_3
    mul-float/2addr v8, v9

    invoke-direct {v7, v5, v8}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;-><init>(IF)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_12
    move v5, v3

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_16

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CONQUER_TRIBAL_LIMIT:I

    if-ge v5, v6, :cond_16

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move v8, v3

    move v7, v4

    :goto_5
    if-ge v7, v6, :cond_14

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;->distance:F

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;->distance:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_13

    move v8, v7

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_14
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;->civID:I

    invoke-static {p0, v6}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar;->isCivAlly(II)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;->civID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_15
    add-int/lit8 v5, v5, -0x1

    :goto_6
    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/2addr v5, v4

    goto :goto_4

    :cond_16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-lez v1, :cond_18

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->AI_CONQUER_OWN_VASSALS_IF_OVER:I

    if-le v1, v5, :cond_18

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_CONQUER_OWN_VASSALS_CHANCE:I

    if-ge v1, v5, :cond_18

    move v1, v3

    move v5, v1

    :goto_7
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    if-ge v1, v6, :cond_19

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v6

    if-ne v6, p0, :cond_17

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {p0, v6}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar;->isCivAlly(II)Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v4

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_18
    move v5, v3

    :cond_19
    if-nez v5, :cond_1e

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    if-lez v1, :cond_1e

    move v1, v3

    :goto_8
    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    if-ge v1, v5, :cond_1e

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v5

    if-ne v5, p0, :cond_1c

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_AGAINST_OWN_VASSAL_CHANCE:I

    if-ge v5, v6, :cond_1a

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {p0, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar;->isCivAlly(II)Z

    move-result v5

    if-nez v5, :cond_1a

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_1a
    move v5, v3

    :goto_9
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    if-ge v5, v6, :cond_1d

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    if-eq v6, p0, :cond_1b

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {p0, v6}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar;->isCivAlly(II)Z

    move-result v6

    if-nez v6, :cond_1b

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    :cond_1c
    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {p0, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar;->isCivAlly(II)Z

    move-result v5

    if-nez v5, :cond_1d

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CLOSEST_CIV_CHANCE:I

    if-ge v1, v5, :cond_26

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    :goto_b
    if-ge v5, p0, :cond_20

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-lez v6, :cond_1f

    new-instance v6, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v7

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v8

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance_PercOfMax(II)F

    move-result v7

    invoke-direct {v6, v5, v7}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;-><init>(IF)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_20
    add-int/lit8 v5, p0, 0x1

    :goto_c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v6

    if-ge v5, v6, :cond_22

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-lez v6, :cond_21

    new-instance v6, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v7

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v8

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance_PercOfMax(II)F

    move-result v7

    invoke-direct {v6, v5, v7}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;-><init>(IF)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_22
    move v5, v3

    :goto_d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_26

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CLOSEST_CIV_CIVS_LIMIT:I

    if-ge v5, v6, :cond_26

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move v8, v3

    move v7, v4

    :goto_e
    if-ge v7, v6, :cond_24

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;->distance:F

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;->distance:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_23

    move v8, v7

    :cond_23
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_24
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;->civID:I

    invoke-static {p0, v6}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar;->isCivAlly(II)Z

    move-result v6

    if-nez v6, :cond_25

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;->civID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_25
    add-int/lit8 v5, v5, -0x1

    :goto_f
    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/2addr v5, v4

    goto :goto_d

    :cond_26
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    move v1, v3

    :goto_10
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CHECK_LIMIT:I

    if-ge v1, v5, :cond_3d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3d

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v5

    if-eqz v5, :cond_27

    goto/16 :goto_19

    :cond_27
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_RANDOM_NUMBER:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CLOSEST_CIV_ALL_PROVINCES_CHANCE:I

    if-ge v5, v6, :cond_2b

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v6

    move v7, v3

    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_29

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    const/4 v9, 0x0

    move v10, v3

    :goto_12
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v11

    if-ge v10, v11, :cond_28

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v11

    invoke-static {v6, v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance(II)F

    move-result v11

    add-float/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_28
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_29
    move v7, v3

    move v6, v4

    :goto_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_34

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2a

    move v7, v6

    :cond_2a
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_2b
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CLOSEST_CIV_CAPITAL_CHANCE:I

    if-ge v5, v6, :cond_2d

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance_PercOfMax(II)F

    move-result v5

    move v7, v3

    move v6, v4

    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_34

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v8

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v9

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance_PercOfMax(II)F

    move-result v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_2c

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v5

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v7

    invoke-static {v5, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance_PercOfMax(II)F

    move-result v5

    move v7, v6

    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_2d
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CIV_PROVINCES_CHANCE:I

    if-ge v5, v6, :cond_2f

    move v7, v3

    move v5, v4

    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_34

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    add-int/2addr v6, v8

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v9

    add-int/2addr v8, v9

    if-le v6, v8, :cond_2e

    move v7, v5

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_2f
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CIV_MANPOWER_MAX_CHANCE:I

    if-ge v5, v6, :cond_31

    move v7, v3

    move v5, v4

    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_34

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-wide v8, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-wide v10, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    add-double/2addr v8, v10

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-wide v10, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-wide v12, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    add-double/2addr v10, v12

    cmpl-double v6, v8, v10

    if-lez v6, :cond_30

    move v7, v5

    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_31
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CHOOSE_WEAKEST_CIV_REGIMENTS_CHANCE:I

    if-ge v5, v6, :cond_33

    move v7, v3

    move v5, v4

    :goto_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_34

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    add-int/2addr v6, v8

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    add-int/2addr v8, v9

    if-le v6, v8, :cond_32

    move v7, v5

    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_33
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    :cond_34
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->haveNonAggressionPact(I)Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v6, p0, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addDamageRelations(II)Z

    invoke-interface {p1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_18

    :cond_35
    invoke-static {p0, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_DeclareWar;->checkRegiments_ForWar(II)Z

    move-result v6

    if-nez v6, :cond_36

    invoke-interface {p1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_18

    :cond_36
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->RELATIONS_TO_DECLARE_WAR:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_37

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_DECLARE_WAR_IMMEDIATELY_IF_POSSIBLE_CHANCE:I

    if-ge v6, v7, :cond_37

    invoke-static {p0, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_DeclareWar;->declareWar(II)Z

    move-result v6

    if-eqz v6, :cond_37

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->AI_AT_WAR_MIN_MILITARY_LEVEL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMilitaryLevel(I)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :cond_37
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->RELATIONS_TO_DECLARE_WAR:I

    int-to-float v7, v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_DECREASE_RELATIONS_MODIFIER:F

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_38

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v6, p0, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addDamageRelations(II)Z

    :cond_38
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_SEND_INSULT_IF_RELATIONS_OVER:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_39

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_SEND_INSULT_IF_RELATIONS_OVER_RANDOM_CHANCE:I

    if-ge v6, v7, :cond_3a

    :cond_39
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_SEND_INSULT_CHANCE:I

    if-ge v6, v7, :cond_3a

    invoke-static {p0, v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->sendInsult(II)Z

    :cond_3a
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->addPrepareForWar(I)Z

    move-result v5

    if-eqz v5, :cond_3b

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    new-instance v6, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update_ReorganizeArmiesAtPeace"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addAI_SimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_3b
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->AI_AT_WAR_MIN_MILITARY_LEVEL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMilitaryLevel(I)V

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_CIVS_LIMIT:I

    if-lt v5, v6, :cond_3c

    goto :goto_19

    :cond_3c
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    :cond_3d
    :goto_19
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1a

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1a
    return-void
.end method
