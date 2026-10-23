.class public Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;
.super Ljava/lang/Object;
.source "AI_Budget.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;",
            ">;"
        }
    .end annotation
.end field

.field public tx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->tx:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final updateBudget()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_BUDGET_DEFAULT:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_4

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->tx:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->tx:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;->t:I

    if-le v2, v3, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->tx:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;->c:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTaxationLevel(I)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->tx:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_1
    if-ltz v1, :cond_4

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;->t:I

    if-le v2, v3, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;->c:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;->c:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;->c:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMilitaryLevel(I)V

    :cond_2
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_BUDGET:I

    rem-int/2addr v1, v2

    add-int/2addr v1, v0

    :goto_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v1, v0, :cond_6

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->updateBudget(I)V

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_BUDGET:I

    add-int/2addr v1, v0

    goto :goto_2

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_BUDGET:I

    :goto_3
    add-int/2addr v1, v0

    :cond_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    if-ge v1, v0, :cond_9

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->updateBudget(I)V

    :cond_8
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_BUDGET:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public final updateBudget(I)V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->CHANGE_BATTLE_TACTICS_CHANCE:I

    if-ge v0, v2, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setBattleTacticsID(I)V

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_DECREASE_TAXATION_IF_UNREST_IN_CAPITAL_OVER:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTaxationLevel(I)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->tx:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_DECREASE_TAXATION_TURNS_MIN:I

    add-int/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_DECREASE_TAXATION_TURNS_RANDOM:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, p1, v4}, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_INCREASE_TAXATION_CHANCE:I

    if-ge v0, v3, :cond_2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_INCREASE_TAXATION_IF_STABILITY_BELOW:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_INCREASE_TAXATION_IF_UNREST_IN_CAPITAL_BELOW:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTaxationLevel(I)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->tx:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_INCREASE_TAXATION_TURNS_MIN:I

    add-int/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_INCREASE_TAXATION_TURNS_RANDOM:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, p1, v4}, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_DECREASE_MILITARY_CHANCE:I

    if-ge v0, v1, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMilitaryLevel(I)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->a:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_DECREASE_MILITARY_TURNS_MIN:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_DECREASE_MILITARY_TURNS_RANDOM:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, p1, v2}, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final updateMilitaryLevel_War(IIII)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->AI_MAX_MILITARY_LEVEL_IF_REGIMENTS_RATIO_OVER:F

    cmpl-float p2, p2, v0

    if-gtz p2, :cond_1

    int-to-float p2, p4

    int-to-float p3, p3

    div-float/2addr p2, p3

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget p3, p3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->AI_MAX_MILITARY_LEVEL_IF_REGIMENTS_RATIO_OVER:F

    cmpl-float p2, p2, p3

    if-lez p2, :cond_2

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->AI_AT_WAR_MAX_MILITARY_LEVEL:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMilitaryLevel(I)V

    :cond_2
    return-void
.end method
