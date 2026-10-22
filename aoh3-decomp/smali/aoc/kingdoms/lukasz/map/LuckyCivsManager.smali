.class public Laoc/kingdoms/lukasz/map/LuckyCivsManager;
.super Ljava/lang/Object;
.source "LuckyCivsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildLuckyCivs()V
    .locals 5

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

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->LUCKY_CIVS_LIMIT:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->LUCKY_CIVS_LIMIT_PERC_ALL_CIVS:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/LuckyCivsManager;->luckyCiv(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static luckyCiv(I)V
    .locals 3

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->BONUS_MONTHLY_INCOME:F

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->BONUS_PRODUCTION_EFFICIENCY:F

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->BONUS_MAX_MANPOWER:I

    int-to-float v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->BONUS_REGIMENTS_LIMIT:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->BONUS_UNITS_ATTACK:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->BONUS_EXPIRES:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    return-void
.end method
