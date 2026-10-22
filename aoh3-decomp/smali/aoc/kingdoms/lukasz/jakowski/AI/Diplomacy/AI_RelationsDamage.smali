.class public Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsDamage;
.super Ljava/lang/Object;
.source "AI_RelationsDamage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildScore(IIF)V
    .locals 2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    const v1, 0x49741c40    # 999876.0f

    if-lez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result p0

    iput p0, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    goto :goto_0

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    goto :goto_0

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    :goto_0
    return-void
.end method

.method public static buildScoreManpower(IID)V
    .locals 4

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    const v1, 0x49741c40    # 999876.0f

    if-lez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-wide v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    cmpg-double p2, v2, p2

    if-gez p2, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result p0

    iput p0, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    goto :goto_0

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    goto :goto_0

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    :goto_0
    return-void
.end method

.method public static buildScoreRegiments(IIF)V
    .locals 2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    const v1, 0x49741c40    # 999876.0f

    if-lez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    int-to-float v0, v0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result p0

    iput p0, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    goto :goto_0

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    goto :goto_0

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

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

.method public static updateRelations_Damage()V
    .locals 2

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RELATIONS_DAMAGE:I

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

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsDamage;->updateRelations_Damage(I)V

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RELATIONS_DAMAGE:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RELATIONS_DAMAGE:I

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

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsDamage;->updateRelations_Damage(I)V

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RELATIONS_DAMAGE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public static updateRelations_Damage(I)V
    .locals 9

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    const/16 v1, 0x64

    if-lez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_CLEAR_DECREASE_RELATIONS_CHANCE:I

    if-ge v0, v2, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->clearDamageRelations_AI(I)V

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_DAMAGE_RELATIONS_PRIORITIZE_TRIBAL:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_DAMAGE_RELATIONS_PRIORITIZE_TRIBAL_CHANCE:I

    if-ge v0, v1, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->TRIBAL:Z

    if-nez v0, :cond_3

    move v0, v2

    move v1, v0

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    if-ge v0, v4, :cond_2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-eqz v4, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {p0, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v5

    if-le v4, v5, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-le v4, v5, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-virtual {v4, p0, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addDamageRelations(II)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_LIMIT_DECREASING_RELATIONS:I

    if-ge v0, v1, :cond_14

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_6

    if-eq v0, v1, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    int-to-float v0, v0

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_DAMAGE_RELATIONS_REGIMENTS_MODIFIER:F

    mul-float/2addr v0, v4

    move v4, v3

    :goto_1
    if-ge v4, p0, :cond_5

    invoke-static {p0, v4, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsDamage;->buildScoreRegiments(IIF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v4, p0, 0x1

    :goto_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-static {p0, v4, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsDamage;->buildScoreRegiments(IIF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-wide v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_DAMAGE_RELATIONS_MANPOWER_MODIFIER:F

    float-to-double v6, v0

    mul-double/2addr v4, v6

    move v0, v3

    :goto_3
    if-ge v0, p0, :cond_7

    invoke-static {p0, v0, v4, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsDamage;->buildScoreManpower(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v0, p0, 0x1

    :goto_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v6

    if-ge v0, v6, :cond_a

    invoke-static {p0, v0, v4, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsDamage;->buildScoreManpower(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_DAMAGE_RELATIONS_INCOME_MODIFIER:F

    mul-float/2addr v0, v4

    move v4, v3

    :goto_5
    if-ge v4, p0, :cond_9

    invoke-static {p0, v4, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsDamage;->buildScore(IIF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v4, p0, 0x1

    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-static {p0, v4, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsDamage;->buildScore(IIF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    const v5, 0x4cbebb86    # 9.9998768E7f

    iput v5, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    :goto_8
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-ge v2, v4, :cond_b

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    const v6, 0x4cbebc1c    # 9.9999968E7f

    iput v6, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_DAMAGE_RELATIONS_NUM_TO_CHOOSE_FROM:I

    sub-int/2addr v2, v3

    :goto_9
    if-ltz v2, :cond_12

    move v4, v1

    move v6, v3

    :goto_a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v7

    if-ge v4, v7, :cond_d

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_c

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isDamagingRelations(I)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isImprovingRelations(I)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_DAMAGE_RELATIONS_MAX:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_c

    move v6, v4

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_d
    if-ne v6, p0, :cond_e

    goto :goto_d

    :cond_e
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isDamagingRelations(I)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isImprovingRelations(I)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_DAMAGE_RELATIONS_MAX:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_f

    goto :goto_b

    :cond_f
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-lez v4, :cond_12

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    const v7, 0x49741780    # 999800.0f

    cmpg-float v4, v4, v7

    if-gez v4, :cond_12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iput v5, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    goto :goto_c

    :cond_10
    :goto_b
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    const v7, 0x4cbebb4e    # 9.999832E7f

    cmpl-float v4, v4, v7

    if-nez v4, :cond_11

    goto :goto_d

    :cond_11
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iput v7, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    :goto_c
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_9

    :cond_12
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_LIMIT_DECREASING_RELATIONS:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v1, v3

    :goto_e
    if-ltz v1, :cond_13

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, p0, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addDamageRelations(II)Z

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_14
    return-void
.end method
