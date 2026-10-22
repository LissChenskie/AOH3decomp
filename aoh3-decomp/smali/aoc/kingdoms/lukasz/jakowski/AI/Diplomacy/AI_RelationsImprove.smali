.class public Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;
.super Ljava/lang/Object;
.source "AI_RelationsImprove.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addImproveRelations(II)V
    .locals 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addImproveRelations(II)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_IMPROVE_RELATIONS_SEND_GIFT_CHANCE:I

    if-ge v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_IMPROVE_RELATIONS_SEND_GIFT_CLICKS:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_IMPROVE_RELATIONS_SEND_GIFT_CLICKS_RANDOM:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->giftGold(III)Z

    :cond_0
    return-void
.end method

.method public static buildScore(IIFF)V
    .locals 3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->differentReligion(II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_IMPROVE_RELATIONS_DISTANCE_SCORE_EXTRA_DIFFERENT_RELIGION:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr p3, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    div-float/2addr v1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v1

    mul-float/2addr p3, p0

    add-float/2addr p2, p3

    iput p2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    goto :goto_1

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    const p1, 0x49741c40    # 999876.0f

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    :goto_1
    return-void
.end method

.method public static buildScoreManpower(IIFF)V
    .locals 7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result v1

    mul-float/2addr p2, v1

    float-to-double v1, p2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->differentReligion(II)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_IMPROVE_RELATIONS_DISTANCE_SCORE_EXTRA_DIFFERENT_RELIGION:F

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    add-float/2addr p3, p2

    float-to-double p2, p3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-wide v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-wide v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-wide p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-static {v5, v6, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-double p0, p0

    div-double/2addr v3, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v3

    mul-double/2addr p2, p0

    add-double/2addr v1, p2

    double-to-float p0, v1

    iput p0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    goto :goto_1

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    const p1, 0x49741c40    # 999876.0f

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    :goto_1
    return-void
.end method

.method public static buildScoreNumOfProvinces(IIFF)V
    .locals 3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->differentReligion(II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_IMPROVE_RELATIONS_DISTANCE_SCORE_EXTRA_DIFFERENT_RELIGION:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr p3, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result p0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v1

    mul-float/2addr p3, p0

    add-float/2addr p2, p3

    iput p2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    goto :goto_1

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    const p1, 0x49741c40    # 999876.0f

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    :goto_1
    return-void
.end method

.method public static canBeAdded(II)Z
    .locals 1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isRival(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isDamagingRelations(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isImprovingRelations(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result p0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_IMPROVE_RELATIONS_MAX:F

    cmpl-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

.method public static updateRelations_Improve()V
    .locals 2

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RELATIONS:I

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

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->updateRelations_Improve(I)V

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RELATIONS:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RELATIONS:I

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

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->updateRelations_Improve(I)V

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RELATIONS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public static updateRelations_Improve(I)V
    .locals 12

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    const/16 v2, 0x64

    if-lez v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_CLEAR_IMPROVE_RELATIONS_CHANCE:I

    if-ge v1, v3, :cond_0

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->clearImproveRelations_AI(I)V

    :cond_0
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_LIMIT_IMPROVING_RELATIONS:I

    if-lt v1, v3, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-ge v3, v4, :cond_3

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_IMPROVE_RELATIONS_WITH_VASSAL_IF_RELATIONS_BELOW:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {p0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->addImproveRelations(II)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_IMPROVE_RELATIONS_NEIGHBORS_OF_NEIGHBORS:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_8

    move v4, v1

    :goto_1
    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    if-ge v4, v5, :cond_6

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    move v7, v1

    :goto_2
    iget-object v8, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civsSize:I

    if-ge v7, v8, :cond_5

    iget-object v8, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    if-lez v8, :cond_4

    iget-object v8, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    if-eq v8, p0, :cond_4

    iget-object v8, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {p0, v8}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->canBeAdded(II)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->civs:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_LIMIT_IMPROVING_RELATIONS:I

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v6

    :goto_3
    if-ltz v0, :cond_7

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->addImproveRelations(II)V

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_IMPROVE_RELATIONS_DISTANCE_SCORE:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_IMPROVE_RELATIONS_DISTANCE_SCORE_RANDOM:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    add-float/2addr v5, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_IMPROVE_RELATIONS_SECOND_SCORE:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_IMPROVE_RELATIONS_SECOND_SCORE_RANDOM:I

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    add-float/2addr v7, v9

    const/4 v8, 0x2

    if-eqz v4, :cond_d

    if-eq v4, v6, :cond_b

    if-eq v4, v8, :cond_9

    goto :goto_a

    :cond_9
    move v4, v6

    :goto_4
    if-ge v4, p0, :cond_a

    invoke-static {p0, v4, v5, v7}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->buildScoreNumOfProvinces(IIFF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v4, p0, 0x1

    :goto_5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v9

    if-ge v4, v9, :cond_f

    invoke-static {p0, v4, v5, v7}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->buildScoreNumOfProvinces(IIFF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    move v4, v6

    :goto_6
    if-ge v4, p0, :cond_c

    invoke-static {p0, v4, v5, v7}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->buildScoreManpower(IIFF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v4, p0, 0x1

    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v9

    if-ge v4, v9, :cond_f

    invoke-static {p0, v4, v5, v7}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->buildScoreManpower(IIFF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    move v4, v6

    :goto_8
    if-ge v4, p0, :cond_e

    invoke-static {p0, v4, v5, v7}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->buildScore(IIFF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v4, p0, 0x1

    :goto_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v9

    if-ge v4, v9, :cond_f

    invoke-static {p0, v4, v5, v7}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->buildScore(IIFF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_f
    :goto_a
    const v4, 0x4cbebb86    # 9.9998768E7f

    iput v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_LIMIT_IMPROVING_RELATIONS:I

    iget-object v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    sub-int/2addr v5, v7

    mul-int/2addr v5, v8

    sub-int/2addr v5, v6

    :goto_b
    if-ltz v5, :cond_16

    move v9, v6

    move v7, v8

    :goto_c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v10

    if-ge v7, v10, :cond_11

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    iget-object v10, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v10, v7}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isRival(I)Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v10, v7}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isDamagingRelations(I)Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v10, v7}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isImprovingRelations(I)Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v10, v7}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_IMPROVE_RELATIONS_MAX:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_10

    move v9, v7

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_11
    if-ne v9, p0, :cond_12

    goto :goto_f

    :cond_12
    iget-object v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isRival(I)Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isDamagingRelations(I)Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isImprovingRelations(I)Z

    move-result v7

    if-eqz v7, :cond_13

    goto :goto_d

    :cond_13
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v7

    if-lez v7, :cond_16

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iput v4, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    goto :goto_e

    :cond_14
    :goto_d
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    const v10, 0x4cbebb4e    # 9.999832E7f

    cmpl-float v7, v7, v10

    if-nez v7, :cond_15

    goto :goto_f

    :cond_15
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iput v10, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiScore:F

    :goto_e
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_b

    :cond_16
    :goto_f
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_IMPROVE_RELATIONS_BEST_CIVS_RANDOMLY:I

    if-ge v2, v4, :cond_17

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_LIMIT_IMPROVING_RELATIONS:I

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v6

    :goto_10
    if-ltz v0, :cond_18

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->addImproveRelations(II)V

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_17
    :goto_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_LIMIT_IMPROVING_RELATIONS:I

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_18

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->addImproveRelations(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_18
    invoke-interface {v3}, Ljava/util/List;->clear()V

    return-void
.end method
